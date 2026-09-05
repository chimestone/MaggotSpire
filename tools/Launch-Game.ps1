param(
    [string]$GameDirectory = 'D:\STEAM\steamapps\common\Slay the Spire 2'
)

$ErrorActionPreference = 'Stop'

$gameExecutable = Join-Path $GameDirectory 'SlayTheSpire2.exe'
if (-not (Test-Path -LiteralPath $gameExecutable)) {
    throw "Slay the Spire 2 was not found at: $GameDirectory"
}

Start-Process `
    -FilePath $gameExecutable `
    -WorkingDirectory $GameDirectory `
    -ArgumentList '--log', '--force-steam=off', '--rendering-driver', 'opengl3'

