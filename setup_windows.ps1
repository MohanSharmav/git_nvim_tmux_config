$ErrorActionPreference = "Stop"

Write-Host "Starting Windows Setup for Dotfiles..." -ForegroundColor Cyan

# 1. Check for Chocolatey
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey not found. Installing Chocolatey..." -ForegroundColor Yellow
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
    Write-Host "Chocolatey is already installed." -ForegroundColor Green
}

Write-Host "Installing Git and Neovim..." -ForegroundColor Cyan
choco install git neovim -y

# 2. Setup Git
Write-Host "Configuring Git..." -ForegroundColor Cyan
Copy-Item "git\.gitconfig" -Destination "$env:USERPROFILE\.gitconfig" -Force
Write-Host "Git setup complete." -ForegroundColor Green

# 3. Setup Neovim
Write-Host "Configuring Neovim..." -ForegroundColor Cyan
$nvimConfigDir = "$env:LOCALAPPDATA\nvim"
if (!(Test-Path $nvimConfigDir)) {
    New-Item -ItemType Directory -Force -Path $nvimConfigDir | Out-Null
}
Copy-Item "nvim\*" -Destination $nvimConfigDir -Recurse -Force

$plugDest = "$env:LOCALAPPDATA\nvim-data\site\autoload\plug.vim"
if (!(Test-Path $plugDest)) {
    Write-Host "Installing vim-plug..." -ForegroundColor Yellow
    $plugDir = Split-Path $plugDest
    if (!(Test-Path $plugDir)) {
        New-Item -ItemType Directory -Force -Path $plugDir | Out-Null
    }
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile $plugDest
} else {
    Write-Host "vim-plug is already installed." -ForegroundColor Green
}
Write-Host "Neovim setup complete." -ForegroundColor Green

# 4. Tmux Notice
Write-Host "==========================================" -ForegroundColor Magenta
Write-Host "Note on Tmux for Windows:" -ForegroundColor Yellow
Write-Host "Tmux does not run natively on Windows command prompt/PowerShell."
Write-Host "It is highly recommended to run Tmux inside Windows Subsystem for Linux (WSL)."
Write-Host "Open your WSL terminal (e.g., Ubuntu) and run './setup_ubuntu.sh' to install and configure Tmux."
Write-Host "==========================================" -ForegroundColor Magenta

Write-Host "Windows Setup Completed Successfully!" -ForegroundColor Green
Write-Host "Next steps:"
Write-Host "  1. Open Neovim ('nvim') and run ':PlugInstall' to install plugins."
