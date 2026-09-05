$ErrorActionPreference = "Stop"
$Match = [regex]::Match((Get-Content -LiteralPath "scripts/Facade.reds" -Raw), 'Version\(\)\s*->\s*String\s*=\s*"([^"]+)"')
if (-not $Match.Success) { throw "Cannot read package version from scripts/Facade.reds" }
$Match.Groups[1].Value
