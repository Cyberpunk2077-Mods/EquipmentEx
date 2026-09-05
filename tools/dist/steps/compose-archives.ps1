param ($StageDir, $ReleaseBin, $ProjectName)

if (@(Get-ChildItem -Path "archive/packed/archive/pc/mod" -Filter *.archive -File -ErrorAction Stop).Count -eq 0) {
    throw "No compiled archive found in archive/packed/archive/pc/mod"
}

$ArchiveDir = "${StageDir}/archive/pc/mod"

New-Item -ItemType directory -Force -Path ${ArchiveDir} | Out-Null
Copy-Item -Path "archive/packed/archive/pc/mod/*" -Destination ${ArchiveDir}
Copy-Item -Path "archive/source/resources/*" -Destination ${ArchiveDir}
