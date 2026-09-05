# Slay the Maggot Spire

> Damage doesn't disappear. It burrows into your deck.

`MaggotSpire` is a learning-driven Slay the Spire 2 mod. Monster attack damage will eventually be converted into temporary Maggot Wound cards that trigger when drawn.

## Local environment

- Slay the Spire 2: `D:\STEAM\steamapps\common\Slay the Spire 2`
- Godot: 4.5.1 stable Mono
- .NET SDK: 9

## Build

```powershell
dotnet build
```

The build stages `MaggotSpire.dll` and `MaggotSpire.json` under `dist\MaggotSpire`.

## Deploy

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\tools\Deploy-Mod.ps1
```

The deploy script copies the staged files to the game's `mods\MaggotSpire` directory.

## Launch for development

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\tools\Launch-Game.ps1
```

This launches the game with file logging, Steam disabled for local development, and the OpenGL renderer. In VS Code, the same workflow is available through `Tasks: Run Task` → `MaggotSpire: Launch Dev Game`; it builds and deploys first.

## Guided learning prompts

- `docs/prompts/day-02.md` — derive the first Maggot Wound prototype from vanilla card implementations.
