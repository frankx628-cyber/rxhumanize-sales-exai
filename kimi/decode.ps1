# 一键解码 rxhumanize-sales-exai.kplugin
# 用法: .\decode.ps1

$B64File = "$PSScriptRoot\rxhumanize-sales-exai.kplugin.b64"
$OutputFile = "$PSScriptRoot\rxhumanize-sales-exai.kplugin"

if (-Not (Test-Path $B64File)) {
    Write-Error "File not found: $B64File"
    exit 1
}

$Bytes = [System.Convert]::FromBase64String((Get-Content $B64File -Raw))
[System.IO.File]::WriteAllBytes($OutputFile, $Bytes)
Write-Host "Decoded: $OutputFile"
Get-Item $OutputFile | Select-Object Length, LastWriteTime
