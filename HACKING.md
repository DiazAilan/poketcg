# Hacking notes (poketcg-hack)

This repository is based on [`pret/poketcg`](https://github.com/pret/poketcg) and targets the **US** ROM:

- Pokémon Trading Card Game (U) [C][!].gbc

## Quick start

### Prereqs (macOS)

- Xcode Command Line Tools (for `make`/`clang`)
- [RGBDS](https://rgbds.gbdev.io/install) **v1.0.0+** (this repo checks that at build time)

Verify RGBDS:

```bash
rgbasm -V
```

### Build

```bash
make
```

Outputs:

- `poketcg.gbc`
- `poketcg.sym`, `poketcg.map` (useful for debugging)

### Build (debug symbols)

```bash
make DEBUG=1
```

## Common tasks

### Clean builds

- `make tidy`: remove ROM + objects (keeps converted gfx/data outputs)
- `make clean`: remove ROM + objects + converted gfx/data outputs

### ROM verification

- `make compare` checks a byte-for-byte match against the vanilla US ROM hash in `rom.sha1`.
  - After you make hack changes, this will (correctly) fail.

## Emulator workflow

Any GBC emulator works. For debugging, prefer one that can load symbols:

- Run `poketcg.gbc`
- Load `poketcg.sym` so breakpoints show labels/function names

## Suggested “first change”

Start with a tiny **text-only** tweak so we validate the build/run loop before touching gameplay logic.

The first example hack in this repo changes:

- `PressStartWhenReadyText` in `src/text/text1.asm` from `When you are ready.` to `When you're ready.`

