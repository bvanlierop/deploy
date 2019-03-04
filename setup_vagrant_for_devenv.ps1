# This script sets up a Win10 virtual machine (for personal testing purposes)

# Make sure prequisite software is installed
choco install --confirm virtualbox
choco install --confirm vagrant

# Create top level folder for all virtual machines
$vmRootFolder = "D:\vms"
if((Test-Path -Path $vmRootFolder) -eq $False) {
	Write-Host "Creating folder $vmRootFolder ..."
	New-Item -ItemType Directory -Force -Path $vmRootFolder | Out-Null
}

# Setup target folder for the virtual machine
$vmFolderName = "vm_win10"
$vmFolder = Join-Path $vmRootFolder -ChildPath $vmFolderName
if((Test-Path -Path $vmFolder) -eq $False) {
	Write-Host "Creating folder $vmFolder ..."
	New-Item -ItemType Directory -Force -Path $vmFolder | Out-Null
}

# Initialize a test Windows VM
vagrant box add ferventcoder/win7pro-x64-nocm-lite --provider virtualbox

Write-Host "Script finished."

# Note: setup the vm using "vagrant init" command
# and afterwards start it using "vagrant up"