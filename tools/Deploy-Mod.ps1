param(
    [string]$GameDirectory = 'D:\STEAM\steamapps\common\Slay the Spire 2'
)

$ErrorActionPreference = 'Stop'

$projectDirectory = Split-Path -Parent $PSScriptRoot
$sourceDirectory = Join-Path $projectDirectory 'dist\MaggotSpire'
$targetDirectory = Join-Path $GameDirectory 'mods\MaggotSpire'
$gameExecutable = Join-Path $GameDirectory 'SlayTheSpire2.exe'

if (-not (Test-Path -LiteralPath $gameExecutable)) {
    throw "Slay the Spire 2 was not found at: $GameDirectory"
}

$requiredFiles = @('MaggotSpire.dll', 'MaggotSpire.json')
foreach ($fileName in $requiredFiles) {
    $sourceFile = Join-Path $sourceDirectory $fileName
    if (-not (Test-Path -LiteralPath $sourceFile)) {
        throw "Missing staged file: $sourceFile. Run dotnet build first."
    }
}

New-Item -ItemType Directory -Path $targetDirectory -Force | Out-Null
foreach ($fileName in $requiredFiles) {
    Copy-Item -LiteralPath (Join-Path $sourceDirectory $fileName) -Destination $targetDirectory -Force
}

Write-Host "Deployed MaggotSpire to: $targetDirectory"

