# Dev setup

## Recommended tools

### RGBDS

This project requires RGBDS **v1.0.0+**. See the official install docs:

- https://rgbds.gbdev.io/install

### Emulator

Use any emulator you like. If you want symbol-aware debugging, pick one that can load `.sym` files.

#### Symbol loading

After building, you’ll have:

- `poketcg.gbc`: the ROM
- `poketcg.sym`: symbols (labels) for debugging

In a symbol-aware emulator/debugger:

- Load the ROM (`poketcg.gbc`)
- Load symbols from `poketcg.sym`

## Handy commands

```bash
make
make DEBUG=1
make tidy
make clean
```

