 Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

choco install cmder
choco install firefox
choco install visualstudiocode
choco install winrar 
choco install 7zip.install 
choco install vlc 
choco install git.install
choco install adobereader
choco install wget
choco install curl
choco install arduino 
choco install poshgit 
Install-Module posh-git -AllowClobber

cd ~/Downloads
curl https://www.autodesk.com/eagle-download-win -O eagle.exe
.\eagle.exe /silent

cd ~
mkdir Source

Install-Module posh-git
git clone https://github.com/jgennari/Eagle-Libraries.git
cd Eagle-Libraries
git submodule update --init --recursive
cd ..

git clone https://github.com/jgennari/Eagle-Design-Blocks.git