#!/usr/bin/env bash
# Giga Grains content — CC0 samples for Giga Grains and Giga Grains FX
# SPDX-License-Identifier: CC0-1.0
# Written by the Giga Grains authors; dedicated to the public domain (see LICENSE).
#
# Makes Samples/ and PROVENANCE.md from tools/select.tsv, one row per shipped file:
#
#   GG_RENDER=/path/to/gg-render GG_RENDER_COMMIT=<sha> tools/make-samples.sh
#
# A `download` row is fetched from the Versilian Community Sample Library (VCSL, CC0-1.0) at
# the one commit pinned below, by raw URL, and refused unless its SHA-256 is the row's. A
# `generated` row is rendered by Giga Grains' own gg-render from its spec in tools/generated/
# (GG_RENDER names the binary, GG_RENDER_COMMIT the giga-grains commit it was built from). Then
# every file is trimmed to the row's start and length (`-` for the whole file), faded in and out
# over 10 ms, peak-normalized to -1 dBFS (ffmpeg's volumedetect, then volume=<gain>dB) and
# encoded with `flac -8`. The script writes PROVENANCE.md itself, one section per row, so the
# record and the files can't drift. Generated rows that read recorded files come after them.
#
# Downloads and intermediate WAVs go to $MAKE_SAMPLES_WORK (default tools/.work, which git
# ignores); a download already there with the right hash costs no network. Needs bash 3.2+,
# curl, ffmpeg and ffprobe, flac and metaflac, and shasum or sha256sum.

set -euo pipefail

VCSL_REPO=sgossner/VCSL
VCSL_COMMIT=c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e
VCSL_AUTHOR="Versilian Studios LLC (VCSL contributors)"

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
select_tsv="$repo_root/tools/select.tsv"
work="${MAKE_SAMPLES_WORK:-$repo_root/tools/.work}"
provenance="$repo_root/PROVENANCE.md"

die() {
    echo "$0: $*" >&2
    exit 1
}

for tool in curl ffmpeg ffprobe flac metaflac; do
    command -v "$tool" >/dev/null 2>&1 || die "needs $tool"
done
if command -v shasum >/dev/null 2>&1; then
    sha256() { shasum -a 256 "$1" | cut -c1-64; }
elif command -v sha256sum >/dev/null 2>&1; then
    sha256() { sha256sum "$1" | cut -c1-64; }
else
    die "needs shasum or sha256sum"
fi
if grep -q '^generated' "$select_tsv"; then
    [[ -n "${GG_RENDER:-}" && -x "${GG_RENDER:-}" ]] || die "set GG_RENDER to a gg-render binary"
    [[ "${GG_RENDER_COMMIT:-}" =~ ^[0-9a-f]{40}$ ]] || die "set GG_RENDER_COMMIT to its 40-hex commit"
fi

# Percent-encodes a VCSL path for its raw URL ('/' kept).
urlencode() {
    local LC_ALL=C s="$1" out="" c i
    for ((i = 0; i < ${#s}; i++)); do
        c="${s:i:1}"
        case "$c" in
            [a-zA-Z0-9._~/-]) out+="$c" ;;
            *) out+="$(printf '%%%02X' "'$c")" ;;
        esac
    done
    printf '%s' "$out"
}

ffmpeg_version="$(ffmpeg -version | head -n 1 | awk '{print $3}')"
flac_version="$(flac --version | awk '{print $2}')"

rm -rf "$repo_root/Samples"
mkdir -p "$work/downloads" "$work/generated" "$work/wav"

cat >"$provenance" <<EOF
# Provenance

Every file under \`Samples/\` is listed here, one section per file, with where it came from, its
license and how it was made. \`tools/make-samples.sh\` writes this file from \`tools/select.tsv\`
as it makes the samples, so the record and the files agree.

- **Downloads** come from the [Versilian Community Sample Library](https://github.com/$VCSL_REPO)
  (VCSL) at commit \`$VCSL_COMMIT\`, whose \`LICENSE\` is the CC0-1.0 legal code
  (https://github.com/$VCSL_REPO/blob/$VCSL_COMMIT/LICENSE) and whose README states "This
  collection is under a Creative Commons 0 license". Each was fetched by its raw URL at that
  commit and checked against the SHA-256 recorded below.
- **Generated** files were rendered by Giga Grains' own \`gg-render\`
  (https://github.com/sethbc/giga-grains) from the spec in \`tools/generated/\`, by the Giga
  Grains authors, who dedicate them to the public domain under CC0-1.0 (\`LICENSE\`).
- **Processing** (every file): trimmed, faded in and out over 10 ms, peak-normalized to -1 dBFS
  (the gain is -1 dB minus ffmpeg's \`volumedetect\` maximum of the trimmed, faded audio) and
  encoded with \`flac -8\`, with ffmpeg $ffmpeg_version and flac $flac_version. Rates and channels
  are the source's.

Nothing here is a recording of the Giga Grains authors', and nothing lacks a CC0 statement.
EOF

count=0
while IFS=$'\t' read -r kind output source expected start length; do
    [[ -z "$kind" || "$kind" == \#* ]] && continue
    [[ "$output" =~ ^[A-Z][a-z]+/[a-z0-9-]+\.flac$ ]] || die "bad output name: $output"
    name="$(basename "$output" .flac)"

    case "$kind" in
        download)
            url="https://raw.githubusercontent.com/$VCSL_REPO/$VCSL_COMMIT/$(urlencode "$source")"
            input="$work/downloads/$expected.wav"
            if [[ ! -f "$input" || "$(sha256 "$input")" != "$expected" ]]; then
                echo "download: $source"
                curl -sSfL --retry 3 -o "$input.part" "$url"
                actual="$(sha256 "$input.part")"
                if [[ "$actual" != "$expected" ]]; then
                    rm -f "$input.part"
                    die "$source: SHA-256 $actual, expected $expected"
                fi
                mv "$input.part" "$input"
            fi
            ;;
        generated)
            [[ -f "$repo_root/$source" ]] || die "no spec $source"
            input="$work/generated/$name.wav"
            echo "render: $source"
            (cd "$repo_root" && "$GG_RENDER" "$source" -o "$input" >/dev/null)
            ;;
        *) die "unknown kind '$kind' for $output" ;;
    esac

    # The source's sample format decides the output's: 16-bit stays 16-bit, the rest is 24-bit.
    codec="$(ffprobe -v error -select_streams a:0 -show_entries stream=codec_name -of csv=p=0 "$input")"
    [[ "$codec" == pcm_s16le ]] || codec=pcm_s24le
    if [[ "$length" == "-" ]]; then
        length="$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$input")"
        length="$(awk -v l="$length" -v s="$start" 'BEGIN { printf "%.6f", l - s }')"
    fi
    fade_out="$(awk -v l="$length" 'BEGIN { printf "%.6f", l - 0.01 }')"
    shape="atrim=start=$start:duration=$length,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=$fade_out:d=0.01"
    peak="$(ffmpeg -nostdin -hide_banner -i "$input" -af "$shape,volumedetect" -f null - 2>&1 |
        sed -n 's/.*max_volume: \(-*[0-9.]*\) dB.*/\1/p')"
    [[ -n "$peak" ]] || die "$output: no peak measured"
    gain="$(awk -v p="$peak" 'BEGIN { printf "%.1f", -1 - p }')"
    filter="$shape,volume=${gain}dB"

    wav="$work/wav/$name.wav"
    mkdir -p "$repo_root/Samples/$(dirname "$output")"
    ffmpeg -nostdin -v error -y -i "$input" -af "$filter" -c:a "$codec" -bitexact -map_metadata -1 "$wav"
    flac -8 --silent --force -o "$repo_root/Samples/$output" "$wav"

    shipped="$repo_root/Samples/$output"
    rate="$(metaflac --show-sample-rate "$shipped")"
    channels="$(metaflac --show-channels "$shipped")"
    frames="$(metaflac --show-total-samples "$shipped")"
    seconds="$(awk -v f="$frames" -v r="$rate" 'BEGIN { printf "%.3f", f / r }')"
    bytes="$(wc -c <"$shipped" | tr -d ' ')"
    awk -v s="$seconds" 'BEGIN { exit !(s >= 2 && s <= 20) }' || die "$output: $seconds s is outside 2-20 s"

    {
        echo
        echo "### Samples/$output"
        echo
        if [[ "$kind" == download ]]; then
            echo "- **Source:** download"
            echo "- **URL:** $url"
            echo "- **VCSL path:** \`$source\` at commit \`$VCSL_COMMIT\`"
            echo "- **Author:** $VCSL_AUTHOR"
            echo "- **License:** CC0-1.0; the statement is VCSL's \`LICENSE\` at commit \`$VCSL_COMMIT\`"
            echo "- **Download SHA-256:** \`$expected\`"
        else
            reads="$(sed -n 's/.*"path": *"\([^"]*\)".*/\1/p' "$repo_root/$source" | tr '\n' ' ')"
            echo "- **Source:** generated"
            echo "- **Spec:** \`$source\`"
            echo "- **Command:** \`gg-render $source -o $name.wav\`, gg-render built from giga-grains commit \`$GG_RENDER_COMMIT\`"
            if [[ -n "$reads" ]]; then
                echo "- **Reads:** \`${reads% }\` (relative to the spec; recorded above)"
            fi
            echo "- **Author:** the Giga Grains authors"
            echo "- **License:** CC0-1.0; the statement is this repository's \`LICENSE\`"
        fi
        echo "- **Processing:** \`ffmpeg -nostdin -i <source> -af \"$filter\" -c:a $codec -bitexact -map_metadata -1 $name.wav\`, then \`flac -8 -o Samples/$output $name.wav\` (measured peak before gain: $peak dBFS)"
        echo "- **SHA-256:** \`$(sha256 "$shipped")\`"
        echo "- **Bytes:** $bytes"
        echo "- **Sample rate:** $rate Hz"
        echo "- **Channels:** $channels"
        echo "- **Seconds:** $seconds"
    } >>"$provenance"
    count=$((count + 1))
    echo "made Samples/$output ($seconds s, $bytes bytes)"
done <"$select_tsv"

echo "made $count files; PROVENANCE.md written"
