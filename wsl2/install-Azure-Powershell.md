# Install Powershell, Azure-powerhell into WSL(Ubuntu)
- https://docs.microsoft.com/ja-jp/powershell/scripting/install/installing-powershell-on-linux?view=powershell-7.2
- https://docs.microsoft.com/ja-jp/powershell/scripting/install/install-ubuntu?view=powershell-7.2
- https://docs-microsoft-com.translate.goog/ja-jp/powershell/azure/install-az-ps?view=azps-8.3.0&_x_tr_sl=en&_x_tr_tl=ja&_x_tr_hl=ja&_x_tr_pto=sc

1. install powershell
2. start powershell
3. install auzre powershell
4. sign in Azure

# 1. Install Powershell

## procedure: 2 methods  
- install from package repository
-  Installation via Direct Download
  
### a. install from package repository
#### Update the list of packages
sudo apt-get update
#### Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common
#### Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
#### Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
#### Update the list of packages after we added packages.microsoft.com
sudo apt-get update
#### Install PowerShell
sudo apt-get install -y powershell

### b. Installation via Direct Download
#### Install the downloaded package
sudo dpkg -i powershell-lts_7.2.6-1.deb_amd64.deb

#### Resolve missing dependencies and finish the install (if necessary)
sudo apt-get install -f

### uninstllation
sudo apt-get remove powershell

# 2. Start PowerShell
pwsh

# 3. install Azure Powershell

### check version  
$PSVersionTable.PSVersion  
### enable start scripts  
Get-ExecutionPolicy  
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser  
Get-ExecutionPolicy

### install  
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force

# 4. sign in Azure
Connect-AzAccount
