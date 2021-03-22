Write-Host "*** Setting up programming toolbox ***"

Write-Host "Installing Git Extensions ..."
choco install --confirm "gitextensions"

Write-Host "Adding Git Extensions to PATH ..."
$env:Path += ";C:\Program Files (x86)\GitExtensions"

Write-Host "Add Powershell Profile ..."
# Test-Path $profile
New-Item -path $profile -type file -force
