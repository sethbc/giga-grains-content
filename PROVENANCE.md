# Provenance

Every file under `Samples/` is listed here, one section per file, with where it came from, its
license and how it was made. `tools/make-samples.sh` writes this file from `tools/select.tsv`
as it makes the samples, so the record and the files agree.

- **Downloads** come from two libraries by Versilian Studios, each fetched by its raw URL at
  one commit and checked against the SHA-256 recorded below:
  - the [Versilian Community Sample Library](https://github.com/sgossner/VCSL) (VCSL) at commit
    `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`, whose `LICENSE` is the CC0-1.0 legal code
    (https://github.com/sgossner/VCSL/blob/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/LICENSE) and whose README states "This
    collection is under a Creative Commons 0 license";
  - [VS Chamber Orchestra: Community Edition](https://github.com/sgossner/VSCO-2-CE) (VSCO 2: CE) at
    commit `440300901dfe9275fd84e0b7763af1f8443ae62e`, whose `LICENSE` is the CC0 1.0 Universal legal code
    (https://github.com/sgossner/VSCO-2-CE/blob/440300901dfe9275fd84e0b7763af1f8443ae62e/LICENSE). Its `Readme.txt` asks for
    credit to "Versilian Studios/Sam Gossner, and/or Ivy Audio/Simon Dalzell where applicable",
    which each of its sections below gives, and asks that the samples not be sold directly:
    this collection is free.
- **Generated** files were rendered by Giga Grains' own `gg-render`
  (https://github.com/sethbc/giga-grains) from the spec in `tools/generated/`, by the Giga
  Grains authors, who dedicate them to the public domain under CC0-1.0 (`LICENSE`).
- **Processing** (every file): trimmed, faded in and out over 10 ms, peak-normalized to -1 dBFS
  (the gain is -1 dB minus ffmpeg's `volumedetect` maximum of the trimmed, faded audio) and
  encoded with `flac -8`, with ffmpeg 9.0.2 and flac 1.5.0. Rates and channels
  are the source's. A file an earlier release shipped keeps its bytes and its section here.

Nothing here is a recording of the Giga Grains authors', and nothing lacks a CC0 statement.

### Samples/Strings/psaltery-c4-bowed.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Chordophones/Zithers/Psaltery%2C%20Bowed%20and%20Plucked/LongBow/BowedPsaltery_C4_Main_LongBow_rr1.wav
- **VCSL path:** `Chordophones/Zithers/Psaltery, Bowed and Plucked/LongBow/BowedPsaltery_C4_Main_LongBow_rr1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `57f455c9412f2d642e8d423207aa7a12f48dde77293283d058636b08cd8fdfb0`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=7.3,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=7.290000:d=0.01,volume=22.4dB" -c:a pcm_s24le -bitexact -map_metadata -1 psaltery-c4-bowed.wav`, then `flac -8 -o Samples/Strings/psaltery-c4-bowed.flac psaltery-c4-bowed.wav` (measured peak before gain: -23.4 dBFS)
- **SHA-256:** `611df1f74de9ccd4580586098fcb6f21a65c4471900eb597c75728bce9cf7050`
- **Bytes:** 1187263
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 7.300

### Samples/Strings/dan-tranh-b2-tremolo.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Chordophones/Zithers/Dan%20Tranh/Tremolo/B2_Trem_1.wav
- **VCSL path:** `Chordophones/Zithers/Dan Tranh/Tremolo/B2_Trem_1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `7a0437a1911cebdc212500da927c1bdd0674e31439704ba6c928d93b27e47ce7`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=11.6,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.590000:d=0.01,volume=8.0dB" -c:a pcm_s24le -bitexact -map_metadata -1 dan-tranh-b2-tremolo.wav`, then `flac -8 -o Samples/Strings/dan-tranh-b2-tremolo.flac dan-tranh-b2-tremolo.wav` (measured peak before gain: -9.0 dBFS)
- **SHA-256:** `1da7a66727ee11bf7a4c88b2153871862f553631a4b44cd77c5aecfbf5027f74`
- **Bytes:** 717253
- **Sample rate:** 44100 Hz
- **Channels:** 1
- **Seconds:** 11.600

### Samples/Winds/tenor-sax-c3-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Reed%20Aerophones/Tenor%20Saxophone/Non-Vibrato/BrettTenor_NV_Main_C3_vl2_rr1.wav
- **VCSL path:** `Aerophones/Reed Aerophones/Tenor Saxophone/Non-Vibrato/BrettTenor_NV_Main_C3_vl2_rr1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `4afeef41e7f3a5df8c47a3f31389b5948837fe8b21c9e3e9e135829e44050677`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=7.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=6.990000:d=0.01,volume=27.1dB" -c:a pcm_s24le -bitexact -map_metadata -1 tenor-sax-c3-sustain.wav`, then `flac -8 -o Samples/Winds/tenor-sax-c3-sustain.flac tenor-sax-c3-sustain.wav` (measured peak before gain: -28.1 dBFS)
- **SHA-256:** `24f46b502002ec11b18dba2afe86e56e2fed1dada825057d39092b690663b48c`
- **Bytes:** 1394161
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 7.000

### Samples/Winds/saxello-d4-vibrato.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Reed%20Aerophones/Saxello/Vibrato/BrettSaxello_SusVB_MainSpirit_D4_vl2_rr1.wav
- **VCSL path:** `Aerophones/Reed Aerophones/Saxello/Vibrato/BrettSaxello_SusVB_MainSpirit_D4_vl2_rr1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `59bea15adfc32cb856eb515221aaec2e4570d0b2bfb7ff4df31465c1b2305615`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=6.4,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=6.390000:d=0.01,volume=6.4dB" -c:a pcm_s24le -bitexact -map_metadata -1 saxello-d4-vibrato.wav`, then `flac -8 -o Samples/Winds/saxello-d4-vibrato.flac saxello-d4-vibrato.wav` (measured peak before gain: -7.4 dBFS)
- **SHA-256:** `05eb21917cc450f0c168e2f897c2fd080629776f1b26e91a97fa1071d6e7667c`
- **Bytes:** 1307435
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 6.400

### Samples/Winds/bass-recorder-d3-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Edge-blown%20Aerophones/Baroque%20Bass%20Recorder/Sustain/BassRecorder_Sus_D3_rr1_Main.wav
- **VCSL path:** `Aerophones/Edge-blown Aerophones/Baroque Bass Recorder/Sustain/BassRecorder_Sus_D3_rr1_Main.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `ebe2e0c4819b808137b1634d2f70888ed06a8dfc3791a5aaa656c3c754626f3c`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=7.990000:d=0.01,volume=28.5dB" -c:a pcm_s16le -bitexact -map_metadata -1 bass-recorder-d3-sustain.wav`, then `flac -8 -o Samples/Winds/bass-recorder-d3-sustain.flac bass-recorder-d3-sustain.wav` (measured peak before gain: -29.5 dBFS)
- **SHA-256:** `d7e7319c12e4e55a99520905e79a066b7428a2d78d2ce15dd1025c369751311a`
- **Bytes:** 778735
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 8.000

### Samples/Winds/tenor-recorder-a4-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Edge-blown%20Aerophones/Baroque%20Tenor%20Recorder/Sustain/TenRecorder_Sus_A4_rr1_Main.wav
- **VCSL path:** `Aerophones/Edge-blown Aerophones/Baroque Tenor Recorder/Sustain/TenRecorder_Sus_A4_rr1_Main.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `b1c958ac379c2f1b089367db1f8e11ba1e321a83a025b4432863fcd01f0fcae7`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=11.3,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.290000:d=0.01,volume=11.0dB" -c:a pcm_s16le -bitexact -map_metadata -1 tenor-recorder-a4-sustain.wav`, then `flac -8 -o Samples/Winds/tenor-recorder-a4-sustain.flac tenor-recorder-a4-sustain.wav` (measured peak before gain: -12.0 dBFS)
- **SHA-256:** `1806333e3441aa4178fe2f8839d2494465f3ef35c5b0ef03dbb2cf90f8a34302`
- **Bytes:** 962523
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 11.300

### Samples/Winds/ocarina-a3-vibrato.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Edge-blown%20Aerophones/Ocarina%2C%20Typical/Sustains/SusVib/StdOcarina_SusVib_A3.wav
- **VCSL path:** `Aerophones/Edge-blown Aerophones/Ocarina, Typical/Sustains/SusVib/StdOcarina_SusVib_A3.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `ce0c2d4c4f60558ba3b8bf91f23912c4be95da3902f520cf856ca5ca3f9c179f`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=10.2,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=10.190000:d=0.01,volume=11.3dB" -c:a pcm_s24le -bitexact -map_metadata -1 ocarina-a3-vibrato.wav`, then `flac -8 -o Samples/Winds/ocarina-a3-vibrato.flac ocarina-a3-vibrato.wav` (measured peak before gain: -12.3 dBFS)
- **SHA-256:** `5f719e0f6ac557f6fa66adc024fe2809a3711f3da7768d08ec231a80ad9101c2`
- **Bytes:** 1290524
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 10.200

### Samples/Winds/renaissance-organ-c3-8ft.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Edge-blown%20Aerophones/Renaissance%20Organ/8%27/RenOrgan_8foot_Room_C3_rr1.wav
- **VCSL path:** `Aerophones/Edge-blown Aerophones/Renaissance Organ/8'/RenOrgan_8foot_Room_C3_rr1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `90e36226d3448f39800afd68aad68f1902cb280899430789cb77d1ab93bdbb34`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.1,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=8.090000:d=0.01,volume=15.3dB" -c:a pcm_s24le -bitexact -map_metadata -1 renaissance-organ-c3-8ft.wav`, then `flac -8 -o Samples/Winds/renaissance-organ-c3-8ft.flac renaissance-organ-c3-8ft.wav` (measured peak before gain: -16.3 dBFS)
- **SHA-256:** `2e5274f2e039dd2c1d2fd962a47f137e0d88e0b113c2b431456977fac2774456`
- **Bytes:** 930828
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 8.100

### Samples/Winds/harmonica-c4-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Free%20Aerophones/Harmonica-Hohner-Super64/Sustains/Accented/Hohner-Super64_Accented_C4.wav
- **VCSL path:** `Aerophones/Free Aerophones/Harmonica-Hohner-Super64/Sustains/Accented/Hohner-Super64_Accented_C4.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `c96fe47573e956894ada2c4c4f2033092b6b48bba676e8239e547e35d645d9e5`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=3.9,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=3.890000:d=0.01,volume=5.5dB" -c:a pcm_s24le -bitexact -map_metadata -1 harmonica-c4-sustain.wav`, then `flac -8 -o Samples/Winds/harmonica-c4-sustain.flac harmonica-c4-sustain.wav` (measured peak before gain: -6.5 dBFS)
- **SHA-256:** `d9d3243750fd600275d404c8cd7678434f126282415a1a2be944cee40fc782d4`
- **Bytes:** 437271
- **Sample rate:** 44100 Hz
- **Channels:** 1
- **Seconds:** 3.900

### Samples/Winds/didgeridoo-drone.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Aerophones/Lip%20Aerophones/Didgeridoo/Didgeridoo1_Phrase3_Main.wav
- **VCSL path:** `Aerophones/Lip Aerophones/Didgeridoo/Didgeridoo1_Phrase3_Main.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `ddcf9bf25aa9f0bedac3c6ae5cb77e4d68913f2322b20ac8c10165ee3c753835`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=10,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=9.990000:d=0.01,volume=12.1dB" -c:a pcm_s24le -bitexact -map_metadata -1 didgeridoo-drone.wav`, then `flac -8 -o Samples/Winds/didgeridoo-drone.flac didgeridoo-drone.wav` (measured peak before gain: -13.1 dBFS)
- **SHA-256:** `3920c16ebb3cebf0ee2191fbbf3c18350417e0dd764015ed2e7dbf0a4aa186f2`
- **Bytes:** 1636110
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 10.000

### Samples/Mallets/vibraphone-d4-bowed.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Vibraphone/Bowed/Vibes_bowed_D4_rr1_Main.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Vibraphone/Bowed/Vibes_bowed_D4_rr1_Main.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `b5a6ab0a6c51b446832bc3686e27a62489f3169182ad4c872698912536d1ece6`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0.4:duration=10.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=9.990000:d=0.01,volume=26.9dB" -c:a pcm_s16le -bitexact -map_metadata -1 vibraphone-d4-bowed.wav`, then `flac -8 -o Samples/Mallets/vibraphone-d4-bowed.flac vibraphone-d4-bowed.wav` (measured peak before gain: -27.9 dBFS)
- **SHA-256:** `351e73852c50ce12a04680991357bd711dc9898651e5ccd2c4de0083d3c7b0b5`
- **Bytes:** 721573
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 10.000

### Samples/Mallets/vibraphone-b3-soft-mallet.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Vibraphone/Soft%20Mallets/Vibes_soft_B3_v2_rr1_Main.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Vibraphone/Soft Mallets/Vibes_soft_B3_v2_rr1_Main.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `9d2466c4d3375f2eb24c57f17e15736052a5492d6c84b876c1d0a4997eea99a0`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.8,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=8.790000:d=0.01,volume=14.3dB" -c:a pcm_s16le -bitexact -map_metadata -1 vibraphone-b3-soft-mallet.wav`, then `flac -8 -o Samples/Mallets/vibraphone-b3-soft-mallet.flac vibraphone-b3-soft-mallet.wav` (measured peak before gain: -15.3 dBFS)
- **SHA-256:** `f9a6b5abdd68eab6546ef5ec6e05659eeff1c770e8973006745fb18cd589ede2`
- **Bytes:** 369022
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 8.800

### Samples/Mallets/marimba-c2.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Marimba/Marimba_hit_Outrigger_C2_med_01.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Marimba/Marimba_hit_Outrigger_C2_med_01.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `fd9c329513ed9d54c36174bbe45add471a80ffad411c686428bbf0bbc0121438`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=3.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=2.990000:d=0.01,volume=35.0dB" -c:a pcm_s24le -bitexact -map_metadata -1 marimba-c2.wav`, then `flac -8 -o Samples/Mallets/marimba-c2.flac marimba-c2.wav` (measured peak before gain: -36.0 dBFS)
- **SHA-256:** `0909cda20f5de321b722e07698ee6bd9da8c1919da99ccaa141766297baf102a`
- **Bytes:** 271198
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 3.000

### Samples/Mallets/tubular-bell-c4.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Tubular%20Bells%201/chimes_C4_p_rr1.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Tubular Bells 1/chimes_C4_p_rr1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `c0f357155823646012c5d86628eedf122f162f813bfeed7337e72bf1a8d37c63`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=22.1dB" -c:a pcm_s24le -bitexact -map_metadata -1 tubular-bell-c4.wav`, then `flac -8 -o Samples/Mallets/tubular-bell-c4.flac tubular-bell-c4.wav` (measured peak before gain: -23.1 dBFS)
- **SHA-256:** `4afc9d475238351a72169ab06f8a45b068bd10ac3c93b9583c51b613f8b30228`
- **Bytes:** 2130199
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Mallets/hand-chime-c4.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Hand%20Chimes/sus_C4_r01_main.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Hand Chimes/sus_C4_r01_main.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `89980f18db9e08a137d1fc18f0505281bd6c192021b9dd33dafb7d3117ef608c`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=5.4,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=5.390000:d=0.01,volume=14.0dB" -c:a pcm_s24le -bitexact -map_metadata -1 hand-chime-c4.wav`, then `flac -8 -o Samples/Mallets/hand-chime-c4.flac hand-chime-c4.wav` (measured peak before gain: -15.0 dBFS)
- **SHA-256:** `e8249b127afb12d4c254a6798370bd90287fdf4e893ea1f666a444522c5a7d52`
- **Bytes:** 477241
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 5.400

### Samples/Mallets/wine-glass-ds4-rubbed.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Friction%20Idiophones/Wine%20Glasses/Sustains/Slow/glass1_D%234_Slow_1_Main.wav
- **VCSL path:** `Idiophones/Friction Idiophones/Wine Glasses/Sustains/Slow/glass1_D#4_Slow_1_Main.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `6cdc2f602fac912a768561b3831ebb9099c884cb5ea76c88befedf545bab1997`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=30.6dB" -c:a pcm_s24le -bitexact -map_metadata -1 wine-glass-ds4-rubbed.wav`, then `flac -8 -o Samples/Mallets/wine-glass-ds4-rubbed.flac wine-glass-ds4-rubbed.wav` (measured peak before gain: -31.6 dBFS)
- **SHA-256:** `8873b85d084c7cd23e0c3f446a0a6dcb2cf96be27e92b8837c3b2825f5ffe183`
- **Bytes:** 1515910
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Mallets/gong-soft.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Gong%201/gong_p.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Gong 1/gong_p.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `3d103e1a7af12eeb17e0c5488f11933ca92b9fbdefa39b8020b64238da2db0d0`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=14,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=13.990000:d=0.01,volume=25.5dB" -c:a pcm_s16le -bitexact -map_metadata -1 gong-soft.wav`, then `flac -8 -o Samples/Mallets/gong-soft.flac gong-soft.wav` (measured peak before gain: -26.5 dBFS)
- **SHA-256:** `bc273c589fc6e8297253e8ecf62c3c391d263d5fdae920785dc84af4c0d3dffa`
- **Bytes:** 942292
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 14.000

### Samples/Mallets/nepalese-hand-bell.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Hand%20Bells%2C%20Nepalese/HB_1.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Hand Bells, Nepalese/HB_1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `46e19962db5cb9b339f22609f1c529cd187249c36f3bcd05d4002179c403c222`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=2.9,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=2.890000:d=0.01,volume=19.1dB" -c:a pcm_s24le -bitexact -map_metadata -1 nepalese-hand-bell.wav`, then `flac -8 -o Samples/Mallets/nepalese-hand-bell.flac nepalese-hand-bell.wav` (measured peak before gain: -20.1 dBFS)
- **SHA-256:** `3cc8c40cceb882c2665072d587fb1832b4441a7c7b9ebf6d9f8d6b814ba688bc`
- **Bytes:** 279025
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 2.900

### Samples/Plucked/harp-c3.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Chordophones/Composite%20Chordophones/Concert%20Harp/KSHarp_C3_mf3.wav
- **VCSL path:** `Chordophones/Composite Chordophones/Concert Harp/KSHarp_C3_mf3.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `18e6222e8fc11a8106e8d7a875d208835eb5b45598f010b21c786b1482e09869`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=7.990000:d=0.01,volume=32.6dB" -c:a pcm_s16le -bitexact -map_metadata -1 harp-c3.wav`, then `flac -8 -o Samples/Plucked/harp-c3.flac harp-c3.wav` (measured peak before gain: -33.6 dBFS)
- **SHA-256:** `92cbffe989e32e0d6b61dd25eae34547b4aefecc389e9cdd516c56b1935495de`
- **Bytes:** 637605
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 8.000

### Samples/Plucked/kalimba-b1.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Plucked%20Idiophones/Kalimba%2C%20Tanzania/MBira3_pluck_Main_B1_k13_50_100_rr2.wav
- **VCSL path:** `Idiophones/Plucked Idiophones/Kalimba, Tanzania/MBira3_pluck_Main_B1_k13_50_100_rr2.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `ce548b5b3cb20b0306dfee89d0c6ef87cb912b898c5314bc3e19ab512e7d0c7b`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=3.3,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=3.290000:d=0.01,volume=1.0dB" -c:a pcm_s24le -bitexact -map_metadata -1 kalimba-b1.wav`, then `flac -8 -o Samples/Plucked/kalimba-b1.flac kalimba-b1.wav` (measured peak before gain: -2.0 dBFS)
- **SHA-256:** `6e71f3533a10b2705e42ae68d975b4dc55392bd0a26f48dabfd0b581a7616e7f`
- **Bytes:** 303696
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 3.300

### Samples/Plucked/mbira-b2.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Plucked%20Idiophones/Mbira%20dzaVadzimu%20Nyamaropa%2C%20Zimbabwe%2C%20Low%20B/MBira4_pluck_Main_B2_13_50_100_rr3.wav
- **VCSL path:** `Idiophones/Plucked Idiophones/Mbira dzaVadzimu Nyamaropa, Zimbabwe, Low B/MBira4_pluck_Main_B2_13_50_100_rr3.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `0509244407cbf05ab4c46747569d216e6c8738010d17df52a8617fa30f458266`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=3.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=2.990000:d=0.01,volume=27.3dB" -c:a pcm_s24le -bitexact -map_metadata -1 mbira-b2.wav`, then `flac -8 -o Samples/Plucked/mbira-b2.flac mbira-b2.wav` (measured peak before gain: -28.3 dBFS)
- **SHA-256:** `75ad2e5aa559292b96ffcb782803595098c276a4cc5d2a20632e0fd2ecb5001e`
- **Bytes:** 508997
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 3.000

### Samples/Plucked/psaltery-c4-plucked.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Chordophones/Zithers/Psaltery%2C%20Bowed%20and%20Plucked/Pluck/BowedPsaltery_C4_Main_Pluck_rr1.wav
- **VCSL path:** `Chordophones/Zithers/Psaltery, Bowed and Plucked/Pluck/BowedPsaltery_C4_Main_Pluck_rr1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `752e4863fd3a0dad6a9ee78099d2aed57e3bee7842fe67b4b360072886b6e200`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=3.6,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=3.590000:d=0.01,volume=17.9dB" -c:a pcm_s24le -bitexact -map_metadata -1 psaltery-c4-plucked.wav`, then `flac -8 -o Samples/Plucked/psaltery-c4-plucked.flac psaltery-c4-plucked.wav` (measured peak before gain: -18.9 dBFS)
- **SHA-256:** `a08bcec18cd94a712fd6ea06eea6b2377d7dfc22ffd104b2b7509e6af5dc17c0`
- **Bytes:** 478735
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 3.600

### Samples/Plucked/piano-c3.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Chordophones/Zithers/Grand%20Piano%2C%20Steinway%20B/Sus/JHPiano_Sus_Close_C3_vl3_rr1.wav
- **VCSL path:** `Chordophones/Zithers/Grand Piano, Steinway B/Sus/JHPiano_Sus_Close_C3_vl3_rr1.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `9910a6e13c4572d78ed336f053132b3b806fa0483cc32a52730fdf18b4e72489`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=9,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=8.990000:d=0.01,volume=3.9dB" -c:a pcm_s24le -bitexact -map_metadata -1 piano-c3.wav`, then `flac -8 -o Samples/Plucked/piano-c3.flac piano-c3.wav` (measured peak before gain: -4.9 dBFS)
- **SHA-256:** `f7de5a914e0b93e9cc3f1970a60e38e87563b0f427f3ddc304e4abe642e05ab0`
- **Bytes:** 1242845
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 9.000

### Samples/Textures/ocean-drum.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Membranophones/Other%20Membranophones/Ocean%20Drum/OceanDrum_Sus_1_Mid.wav
- **VCSL path:** `Membranophones/Other Membranophones/Ocean Drum/OceanDrum_Sus_1_Mid.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `ecb2134b5a34c2d7f064cc7c81e7f76e829ef981bd6ece53816536e352dcda2b`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0.3:duration=10,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=9.990000:d=0.01,volume=46.0dB" -c:a pcm_s16le -bitexact -map_metadata -1 ocean-drum.wav`, then `flac -8 -o Samples/Textures/ocean-drum.flac ocean-drum.wav` (measured peak before gain: -47.0 dBFS)
- **SHA-256:** `3e2b0c2758994d42f1179c096df406188c298e89de2b278da1a2ac32476a25ee`
- **Bytes:** 1228306
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 10.000

### Samples/Textures/cymbal-bowed.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Suspended%20Cymbal%201/susCymb1_bow_17.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Suspended Cymbal 1/susCymb1_bow_17.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `cf4685cc2014df328166ff9c73f3b89f49106cdf41737d228ba1b3d78b3e9e79`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.4,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=12.390000:d=0.01,volume=13.7dB" -c:a pcm_s16le -bitexact -map_metadata -1 cymbal-bowed.wav`, then `flac -8 -o Samples/Textures/cymbal-bowed.flac cymbal-bowed.wav` (measured peak before gain: -14.7 dBFS)
- **SHA-256:** `eced7258821e9b0b11ab37d0ecc2c98328fd2cb7fc8c815235fe14f4bf1dc126`
- **Bytes:** 845824
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 12.400

### Samples/Textures/cymbal-roll.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Idiophones/Struck%20Idiophones/Suspended%20Cymbal%202/susCymb2_roll_pp1_nloop.wav
- **VCSL path:** `Idiophones/Struck Idiophones/Suspended Cymbal 2/susCymb2_roll_pp1_nloop.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `bde4f1dae6235d578264557a08cef719465f24c944e429ae330e8641f178eaec`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=10,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=9.990000:d=0.01,volume=38.5dB" -c:a pcm_s16le -bitexact -map_metadata -1 cymbal-roll.wav`, then `flac -8 -o Samples/Textures/cymbal-roll.flac cymbal-roll.wav` (measured peak before gain: -39.5 dBFS)
- **SHA-256:** `30aebd640cd3a68b73931e9b24960526b1f37d6879e1d22b9160ba55eecbf52e`
- **Bytes:** 909329
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 10.000

### Samples/Textures/timpani-roll.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Membranophones/Struck%20Membranophones/Timpani%201/Roll/Timpani1_Roll_v3_rr1_Sum.wav
- **VCSL path:** `Membranophones/Struck Membranophones/Timpani 1/Roll/Timpani1_Roll_v3_rr1_Sum.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `834f3fcf28a546d854cf3e331cde3d14da68788d130ca306a2ef6f975230566a`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=10,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=9.990000:d=0.01,volume=26.1dB" -c:a pcm_s16le -bitexact -map_metadata -1 timpani-roll.wav`, then `flac -8 -o Samples/Textures/timpani-roll.flac timpani-roll.wav` (measured peak before gain: -27.1 dBFS)
- **SHA-256:** `5a10ab9b32f54e16c011e0c56166275aeca4aa69c4c1e883d2678de93fb5ea42`
- **Bytes:** 649626
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 10.000

### Samples/Textures/dan-tranh-gliss-down.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VCSL/c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e/Chordophones/Zithers/Dan%20Tranh/Gliss/Gliss_Dwn_Slw_mf_2.wav
- **VCSL path:** `Chordophones/Zithers/Dan Tranh/Gliss/Gliss_Dwn_Slw_mf_2.wav` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Author:** Versilian Studios LLC (VCSL contributors)
- **License:** CC0-1.0; the statement is VCSL's `LICENSE` at commit `c1ea7bcc3c7309650ab0da9d15c9cd1fbc4a4c7e`
- **Download SHA-256:** `589aad291c2d4de25663a0d86121cd8f722ff19900459133e8d057061c04fdd0`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=7.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=6.990000:d=0.01,volume=14.0dB" -c:a pcm_s24le -bitexact -map_metadata -1 dan-tranh-gliss-down.wav`, then `flac -8 -o Samples/Textures/dan-tranh-gliss-down.flac dan-tranh-gliss-down.wav` (measured peak before gain: -15.0 dBFS)
- **SHA-256:** `1eac2fc526a37a039f4619ff1827e52adc52d5ce1f02584f777c4be2ce79770c`
- **Bytes:** 310303
- **Sample rate:** 44100 Hz
- **Channels:** 1
- **Seconds:** 7.000

### Samples/Generated/sweep-up.flac

- **Source:** generated
- **Spec:** `tools/generated/sweep-up.json`
- **Command:** `gg-render tools/generated/sweep-up.json -o sweep-up.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.000000,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=5.0dB" -c:a pcm_s24le -bitexact -map_metadata -1 sweep-up.wav`, then `flac -8 -o Samples/Generated/sweep-up.flac sweep-up.wav` (measured peak before gain: -6.0 dBFS)
- **SHA-256:** `35771ead6ebf5764f5af9db88bef77663440cd7ec9cfcc676d2d5e85494fc90f`
- **Bytes:** 593288
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Generated/sweep-down.flac

- **Source:** generated
- **Spec:** `tools/generated/sweep-down.json`
- **Command:** `gg-render tools/generated/sweep-down.json -o sweep-down.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=10.000000,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=9.990000:d=0.01,volume=5.0dB" -c:a pcm_s24le -bitexact -map_metadata -1 sweep-down.wav`, then `flac -8 -o Samples/Generated/sweep-down.flac sweep-down.wav` (measured peak before gain: -6.0 dBFS)
- **SHA-256:** `5a30e95421375ab5e8ee1dc2e5ee7c242b8ff87cf31a9b947a0ef57cdd0f197b`
- **Bytes:** 471938
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 10.000

### Samples/Generated/noise-bed-white.flac

- **Source:** generated
- **Spec:** `tools/generated/noise-bed-white.json`
- **Command:** `gg-render tools/generated/noise-bed-white.json -o noise-bed-white.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.079917,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=8.069917:d=0.01,volume=6.1dB" -c:a pcm_s24le -bitexact -map_metadata -1 noise-bed-white.wav`, then `flac -8 -o Samples/Generated/noise-bed-white.flac noise-bed-white.wav` (measured peak before gain: -7.1 dBFS)
- **SHA-256:** `b84a6716712a42b4b95b4b98208e782359dd54956f48f1ba30eba60325f8aefa`
- **Bytes:** 1100774
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 8.080

### Samples/Generated/noise-bed-dark.flac

- **Source:** generated
- **Spec:** `tools/generated/noise-bed-dark.json`
- **Command:** `gg-render tools/generated/noise-bed-dark.json -o noise-bed-dark.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.076729,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=8.066729:d=0.01,volume=5.9dB" -c:a pcm_s24le -bitexact -map_metadata -1 noise-bed-dark.wav`, then `flac -8 -o Samples/Generated/noise-bed-dark.flac noise-bed-dark.wav` (measured peak before gain: -6.9 dBFS)
- **SHA-256:** `3abc5c7fb97bb15bcea6efe5f0b5a17e76c9aca0b86ddf6836abb9149c482606`
- **Bytes:** 900272
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 8.077

### Samples/Generated/bell-additive.flac

- **Source:** generated
- **Spec:** `tools/generated/bell-additive.json`
- **Command:** `gg-render tools/generated/bell-additive.json -o bell-additive.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=9.000000,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=8.990000:d=0.01,volume=9.3dB" -c:a pcm_s24le -bitexact -map_metadata -1 bell-additive.wav`, then `flac -8 -o Samples/Generated/bell-additive.flac bell-additive.wav` (measured peak before gain: -10.3 dBFS)
- **SHA-256:** `53b050ca4380108a5183e16993e77ffc6dedc4b9dd4ddc1c2e32b8398ad6e9e2`
- **Bytes:** 484530
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 9.000

### Samples/Generated/drone-organ.flac

- **Source:** generated
- **Spec:** `tools/generated/drone-organ.json`
- **Command:** `gg-render tools/generated/drone-organ.json -o drone-organ.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Reads:** `../../Samples/Winds/renaissance-organ-c3-8ft.flac` (relative to the spec; recorded above)
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.475729,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=12.465729:d=0.01,volume=5.4dB" -c:a pcm_s24le -bitexact -map_metadata -1 drone-organ.wav`, then `flac -8 -o Samples/Generated/drone-organ.flac drone-organ.wav` (measured peak before gain: -6.4 dBFS)
- **SHA-256:** `50e806dba0fc003fd941f90764f91a4c315ed5b6b3e1932db4732240fa173ffe`
- **Bytes:** 1013970
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 12.476

### Samples/Generated/drone-glass.flac

- **Source:** generated
- **Spec:** `tools/generated/drone-glass.json`
- **Command:** `gg-render tools/generated/drone-glass.json -o drone-glass.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Reads:** `../../Samples/Mallets/wine-glass-ds4-rubbed.flac` (relative to the spec; recorded above)
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.394021,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=12.384021:d=0.01,volume=5.9dB" -c:a pcm_s24le -bitexact -map_metadata -1 drone-glass.wav`, then `flac -8 -o Samples/Generated/drone-glass.flac drone-glass.wav` (measured peak before gain: -6.9 dBFS)
- **SHA-256:** `df2251f0b8ad45bae34f929a964f31299ae4f2fd547e23ef04eefa144100d3b4`
- **Bytes:** 1516734
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 12.394

### Samples/Generated/drone-vibraphone-frozen.flac

- **Source:** generated
- **Spec:** `tools/generated/drone-vibraphone-frozen.json`
- **Command:** `gg-render tools/generated/drone-vibraphone-frozen.json -o drone-vibraphone-frozen.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Reads:** `../../Samples/Mallets/vibraphone-d4-bowed.flac` (relative to the spec; recorded above)
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.000000,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=6.4dB" -c:a pcm_s24le -bitexact -map_metadata -1 drone-vibraphone-frozen.wav`, then `flac -8 -o Samples/Generated/drone-vibraphone-frozen.flac drone-vibraphone-frozen.wav` (measured peak before gain: -7.4 dBFS)
- **SHA-256:** `4b5b09ca0081ac62656d06188af973cd3c4da6b42b48f906ed23c647c68a7574`
- **Bytes:** 2200073
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Generated/drone-sine-cluster.flac

- **Source:** generated
- **Spec:** `tools/generated/drone-sine-cluster.json`
- **Command:** `gg-render tools/generated/drone-sine-cluster.json -o drone-sine-cluster.wav`, gg-render built from giga-grains commit `a2403a53224da18043f45863b708020407354529`
- **Author:** the Giga Grains authors
- **License:** CC0-1.0; the statement is this repository's `LICENSE`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.000000,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=7.2dB" -c:a pcm_s24le -bitexact -map_metadata -1 drone-sine-cluster.wav`, then `flac -8 -o Samples/Generated/drone-sine-cluster.flac drone-sine-cluster.wav` (measured peak before gain: -8.2 dBFS)
- **SHA-256:** `dfc7d0243ebd513b962e3ad3df7a88b2858f6ce6520f4cd22cda3ccc6b892ad2`
- **Bytes:** 1059592
- **Sample rate:** 48000 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Strings/violin-c4-vibrato.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Solo%20Violin/Arco%20Vib/LLVln_ArcoVib_C4_p.wav
- **VSCO 2: CE path:** `Strings/Solo Violin/Arco Vib/LLVln_ArcoVib_C4_p.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `592ebf4404ccafc7164c13cc543911ba9a2fe5f5e70dbb200807e2ae37b25035`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=13.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=12.990000:d=0.01,volume=17.9dB" -c:a pcm_s16le -bitexact -map_metadata -1 violin-c4-vibrato.wav`, then `flac -8 -o Samples/Strings/violin-c4-vibrato.flac violin-c4-vibrato.wav` (measured peak before gain: -18.9 dBFS)
- **SHA-256:** `1a335cc2450f25b03c2212db7d0d4b37fdc6a207dc446fe3f0e8d9f8cebf257c`
- **Bytes:** 1128904
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 13.000

### Samples/Strings/violin-section-g3-vibrato.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Violin%20Section/susVib/VlnEns_susVib_G2_v2.wav
- **VSCO 2: CE path:** `Strings/Violin Section/susVib/VlnEns_susVib_G2_v2.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `c0b06a23f0245c042f0609dc0db704adc14bfc9ea8a34cb5c97d80096715a0e6`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=16.8dB" -c:a pcm_s16le -bitexact -map_metadata -1 violin-section-g3-vibrato.wav`, then `flac -8 -o Samples/Strings/violin-section-g3-vibrato.flac violin-section-g3-vibrato.wav` (measured peak before gain: -17.8 dBFS)
- **SHA-256:** `07108eafc6c3e749edd868ec2b266b1cd66a5b83b722b75ad44f9b27e89c0e6e`
- **Bytes:** 1148451
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Strings/viola-section-c3-vibrato.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Viola%20Section/susvib/ViolaEns_susvib_C2_v2_1.wav
- **VSCO 2: CE path:** `Strings/Viola Section/susvib/ViolaEns_susvib_C2_v2_1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `09db4ed2c8eda02d1f6a27258a2292b56e65e94ecc0337265bbbac5d9978dc92`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=7.990000:d=0.01,volume=9.3dB" -c:a pcm_s24le -bitexact -map_metadata -1 viola-section-c3-vibrato.wav`, then `flac -8 -o Samples/Strings/viola-section-c3-vibrato.flac viola-section-c3-vibrato.wav` (measured peak before gain: -10.3 dBFS)
- **SHA-256:** `d16a589dc68451fbde81b24ec08ae318c12059b311ca05498c9d14652fa2e10a`
- **Bytes:** 1459367
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 8.000

### Samples/Strings/cello-section-c2-vibrato.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Cello%20Section/susvib/susvib_C1_v3_1.wav
- **VSCO 2: CE path:** `Strings/Cello Section/susvib/susvib_C1_v3_1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `19195ab85ab71626bd11e7100febdaeeba1c237ff5887b934fd0ffd8dfad82cb`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=7.990000:d=0.01,volume=2.1dB" -c:a pcm_s24le -bitexact -map_metadata -1 cello-section-c2-vibrato.wav`, then `flac -8 -o Samples/Strings/cello-section-c2-vibrato.flac cello-section-c2-vibrato.wav` (measured peak before gain: -3.1 dBFS)
- **SHA-256:** `cb126f83ab38947dae4b5e3efece69e4ea57d9935cacb2a3fcbea136d2759744`
- **Bytes:** 1378827
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 8.000

### Samples/Strings/double-bass-e1-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Solo%20Contrabass/SusNV/BKCtbss_SusNV_E0_v1_rr1.wav
- **VSCO 2: CE path:** `Strings/Solo Contrabass/SusNV/BKCtbss_SusNV_E0_v1_rr1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `b510c6c2eb4fb0acba5eaaaa703ebe19025cad3749f645c41f883e4217b338fa`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=35.6dB" -c:a pcm_s16le -bitexact -map_metadata -1 double-bass-e1-sustain.wav`, then `flac -8 -o Samples/Strings/double-bass-e1-sustain.flac double-bass-e1-sustain.wav` (measured peak before gain: -36.6 dBFS)
- **SHA-256:** `3a6ac225f56daeec59da8e0a2ff720dc1a94c9dbbed2eacc82a298feaa369a36`
- **Bytes:** 1015267
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Strings/cello-section-g2-tremolo.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Cello%20Section/trem/trem_G1_v2_1.wav
- **VSCO 2: CE path:** `Strings/Cello Section/trem/trem_G1_v2_1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `3409e8c7c88c19d428fd136dcaf0dfe2738d87d8a9f137afc7c28188c7fba426`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=7.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=6.990000:d=0.01,volume=-0.8dB" -c:a pcm_s24le -bitexact -map_metadata -1 cello-section-g2-tremolo.wav`, then `flac -8 -o Samples/Strings/cello-section-g2-tremolo.flac cello-section-g2-tremolo.wav` (measured peak before gain: -0.2 dBFS)
- **SHA-256:** `9d466a6b9719d6f2558bd660a627be32547f61b05d1b8f426e9f8489cb19d645`
- **Bytes:** 1228458
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 7.000

### Samples/Strings/violin-g5-tremolo.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Solo%20Violin/Trem/LLVln_trem_G4_v2_rr1.wav
- **VSCO 2: CE path:** `Strings/Solo Violin/Trem/LLVln_trem_G4_v2_rr1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `93990f54d3a2ab64c97c35cbe81b60260681dc65a56c3aa10de723b6e1ab3dcc`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=6.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=5.990000:d=0.01,volume=4.2dB" -c:a pcm_s16le -bitexact -map_metadata -1 violin-g5-tremolo.wav`, then `flac -8 -o Samples/Strings/violin-g5-tremolo.flac violin-g5-tremolo.wav` (measured peak before gain: -5.2 dBFS)
- **SHA-256:** `a07797dcc73c0c98c4459b386961349242c7092aa7d77831925b6a8f2e2a0f89`
- **Bytes:** 663820
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 6.000

### Samples/Strings/viola-section-d4-tremolo.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Strings/Viola%20Section/trem/Violas_trem_D3_v1_rr1.wav
- **VSCO 2: CE path:** `Strings/Viola Section/trem/Violas_trem_D3_v1_rr1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `a531890d9f97c98c2c47f84bc8e9413669a44392f988ab0703de37d06a18cc45`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=11.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=10.990000:d=0.01,volume=31.4dB" -c:a pcm_s16le -bitexact -map_metadata -1 viola-section-d4-tremolo.wav`, then `flac -8 -o Samples/Strings/viola-section-d4-tremolo.flac viola-section-d4-tremolo.wav` (measured peak before gain: -32.4 dBFS)
- **SHA-256:** `4cb7f3e88ff1d986ebb3b3fb1b1f0067bb274a2b64a5519e11c0b6ca10b7f707`
- **Bytes:** 996727
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 11.000

### Samples/Brass/horn-a3-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Brass/F%20Horn/sus/MOHorn_sus_A2_v1_1.wav
- **VSCO 2: CE path:** `Brass/F Horn/sus/MOHorn_sus_A2_v1_1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `897ffa7cfdf4e0413e4c80e7fa935f28e0a0971691e112f1516c6102da61809f`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=14.5,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=14.490000:d=0.01,volume=21.6dB" -c:a pcm_s16le -bitexact -map_metadata -1 horn-a3-sustain.wav`, then `flac -8 -o Samples/Brass/horn-a3-sustain.flac horn-a3-sustain.wav` (measured peak before gain: -22.6 dBFS)
- **SHA-256:** `bc1c798519d09d6e546cea8e950f6b747afb65b0681f31c97efcb89b19f37337`
- **Bytes:** 830604
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 14.500

### Samples/Brass/horn-ds4-muted.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Brass/F%20Horn/mute/MOHorn_mute_D%233_v1_1.wav
- **VSCO 2: CE path:** `Brass/F Horn/mute/MOHorn_mute_D#3_v1_1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `2e86b4a55c893e045dc190cd3afe9bb1029ea86097a4cb3ecee8aeaff792fa0c`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=12.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=11.990000:d=0.01,volume=29.7dB" -c:a pcm_s16le -bitexact -map_metadata -1 horn-ds4-muted.wav`, then `flac -8 -o Samples/Brass/horn-ds4-muted.flac horn-ds4-muted.wav` (measured peak before gain: -30.7 dBFS)
- **SHA-256:** `953f21ba57104b06163412ac00fdbfabf9122c8667de66325dbfab9ea3484ed3`
- **Bytes:** 896586
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 12.000

### Samples/Brass/trumpet-as4-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Brass/Trumpet/sus/Sum_SHTrumpet_sus_A%233_v1_rr1.wav
- **VSCO 2: CE path:** `Brass/Trumpet/sus/Sum_SHTrumpet_sus_A#3_v1_rr1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `0a432ceeddcecea962e2e0ebb5c3e80be3d3f251d38c5d4ddc0df4089e97351b`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=14.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=13.990000:d=0.01,volume=18.8dB" -c:a pcm_s16le -bitexact -map_metadata -1 trumpet-as4-sustain.wav`, then `flac -8 -o Samples/Brass/trumpet-as4-sustain.flac trumpet-as4-sustain.wav` (measured peak before gain: -19.8 dBFS)
- **SHA-256:** `b9e79ff48439a1fc5950a4bce868863a221000a9c8b5e58fcf499b349e46afc6`
- **Bytes:** 1156518
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 14.000

### Samples/Brass/trumpet-d5-harmon-mute.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Brass/Trumpet/harmonM-sus/Sum_SHTrumpet_harmonM-sus_D4_v1_rr1.wav
- **VSCO 2: CE path:** `Brass/Trumpet/harmonM-sus/Sum_SHTrumpet_harmonM-sus_D4_v1_rr1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `12dfc0823d1c8cb9baaf20315decd3262fbac4d2cbd0df18e39c8d9279d4126d`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=8.5,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=8.490000:d=0.01,volume=32.3dB" -c:a pcm_s16le -bitexact -map_metadata -1 trumpet-d5-harmon-mute.wav`, then `flac -8 -o Samples/Brass/trumpet-d5-harmon-mute.flac trumpet-d5-harmon-mute.wav` (measured peak before gain: -33.3 dBFS)
- **SHA-256:** `1898110f9e53733179c72c1f8f8d49e804ace9b414ead6b83a0ceae18ae81928`
- **Bytes:** 921846
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 8.500

### Samples/Brass/trombone-f3-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Brass/Tenor%20Trombone/sus/tenortbn_sus_F2_v1_1.wav
- **VSCO 2: CE path:** `Brass/Tenor Trombone/sus/tenortbn_sus_F2_v1_1.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `c9d6777e444e1076000b0dbbacce691739ce7f7f9968b410f29501e38214a764`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=14.0,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=13.990000:d=0.01,volume=41.8dB" -c:a pcm_s16le -bitexact -map_metadata -1 trombone-f3-sustain.wav`, then `flac -8 -o Samples/Brass/trombone-f3-sustain.flac trombone-f3-sustain.wav` (measured peak before gain: -42.8 dBFS)
- **SHA-256:** `8a7e05db8965740e8b21ab6d3a4a782b15eac3f1b48ec1ea85b9b2671df7595b`
- **Bytes:** 1383141
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 14.000

### Samples/Brass/tuba-f2-sustain.flac

- **Source:** download
- **URL:** https://raw.githubusercontent.com/sgossner/VSCO-2-CE/440300901dfe9275fd84e0b7763af1f8443ae62e/Brass/Tuba/sus/Tuba3_sus_F1_v1_rr1_Mid.wav
- **VSCO 2: CE path:** `Brass/Tuba/sus/Tuba3_sus_F1_v1_rr1_Mid.wav` at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Author:** Versilian Studios LLC (VSCO 2: CE; recorded by Sam Gossner & Simon Dalzell, sample cutting by Elan Hickler/Soundemote)
- **License:** CC0-1.0; the statement is VSCO 2: CE's `LICENSE` (CC0 1.0 Universal) at commit `440300901dfe9275fd84e0b7763af1f8443ae62e`
- **Download SHA-256:** `ae5f0afd08dfd4439f60b647859ef1eb4897f12804d3a729b2f3d12096a0fdb5`
- **Processing:** `ffmpeg -nostdin -i <source> -af "atrim=start=0:duration=9.3,asetpts=PTS-STARTPTS,afade=t=in:d=0.01,afade=t=out:st=9.290000:d=0.01,volume=29.7dB" -c:a pcm_s16le -bitexact -map_metadata -1 tuba-f2-sustain.wav`, then `flac -8 -o Samples/Brass/tuba-f2-sustain.flac tuba-f2-sustain.wav` (measured peak before gain: -30.7 dBFS)
- **SHA-256:** `305f1f67763f5511b468676a2c0ff02cb2e9711fc8eab8f0a07bfcc0da699705`
- **Bytes:** 632405
- **Sample rate:** 44100 Hz
- **Channels:** 2
- **Seconds:** 9.300
