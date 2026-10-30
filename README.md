# Giga Grains content

Public-domain (CC0-1.0) samples for [Giga Grains](https://github.com/sethbc/giga-grains), the
granular synthesizer, and Giga Grains FX, the granular effect: the files their factory presets
load, chosen because they granulate well. Nothing of the plugins' own code is here.

## What is in a release

Each release is a tag (`v1`, `v2`, …; a tag never moves) with one asset,
`giga-grains-content-v<N>.zip`, whose top level is:

```
LICENSE           CC0-1.0, the legal code in full
README.md         this file
PROVENANCE.md     one section per shipped file: its source, license, hashes and how it was made
Samples/
  Strings/        bowed and tremolo strings
  Winds/          saxophones, recorders, ocarina, organ, harmonica, didgeridoo
  Mallets/        vibraphone, marimba, bells, chimes, gong, a rubbed wine glass
  Plucked/        harp, kalimba, mbira, psaltery, piano: plucked and struck notes to play
  Textures/       ocean drum, bowed and rolled cymbals, timpani roll, a zither glissando
  Generated/      sweeps, noise beds, a bell and four drones rendered by Giga Grains' gg-render
```

Every sample is FLAC (`flac -8`), at its source's rate and channels, 2 to 20 seconds long, one
note or sound per file, faded in and out over 10 ms and peak-normalized to -1 dBFS. Names are
lowercase ASCII with hyphens; a sharp is spelt `s` (`wine-glass-ds4-rubbed` is D#4).

## Where the files come from

- **Downloads** from the [Versilian Community Sample Library](https://github.com/sgossner/VCSL)
  (VCSL), CC0-1.0, fetched by raw URL at one pinned commit, each checked against its SHA-256.
- **Signals generated** by Giga Grains' own `gg-render`, from the render specs in
  `tools/generated/`; some of them granulate the downloaded files.

Nothing else: no file without a CC0 statement, and no recordings of the authors'. `PROVENANCE.md`
records every file.

## Making a release

1. Edit `tools/select.tsv`: one row per shipped file (the kind, the output path under
   `Samples/`, the VCSL path or the spec, the download's SHA-256, and the trim's start and
   length in seconds). Downloads come first; generated rows that read them follow.
2. Build `gg-render` in a giga-grains checkout, then run

   ```sh
   GG_RENDER=<giga-grains>/build/dev/tools/gg-render/gg-render \
   GG_RENDER_COMMIT=$(git -C <giga-grains> rev-parse HEAD) \
   tools/make-samples.sh
   ```

   It downloads, checks, trims, normalizes and encodes every row into `Samples/`, and writes
   `PROVENANCE.md`. It needs bash, curl, ffmpeg (with ffprobe), flac (with metaflac) and
   shasum or sha256sum.
3. Commit, push `main`, then zip and release:

   ```sh
   zip -r -X giga-grains-content-v<N>.zip LICENSE README.md PROVENANCE.md Samples
   gh release create v<N> giga-grains-content-v<N>.zip --repo sethbc/giga-grains-content \
       --title "Giga Grains content v<N>" --notes-file <notes>
   ```

4. In giga-grains, put the new tag, the asset's URL and its SHA-256 (`shasum -a 256`) in
   `content/pin.txt`.

## License

Everything in this repository, the samples, the text and the tools, is dedicated to the public
domain under [CC0 1.0 Universal](LICENSE).
