Write-Host "Installing Additional software ..."
$softwarePackages = 
@("poshgit",
  "notepadplusplus.install",
  "greenshot",
  "7zip",
  "putty",
  "sysinternals",
  "vim",
  "sumatrapdf")

foreach($softwarePackage in $softwarePackages) {
	Write-Host "Installing software package '$($softwarePackage)' ..." -ForegroundColor cyan
	Write-Host -NoNewLine 'Press any key to continue...';
	$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
	choco install --confirm $softwarePackage
}

Write-Host "Finished." -ForegroundColor green