# Neovim Setup Guide

This folder contains the `init.vim` file for configuring Neovim.

## Prerequisites
This configuration relies on **vim-plug** for plugin management. Install it first:
**Linux/macOS/WSL:**
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
**Windows (PowerShell):**
```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

---

## macOS Setup
1. **Install Neovim:**
   ```bash
   brew install neovim
   ```
2. **Apply Configuration:**
   Create the config directory and copy `init.vim`:
   ```bash
   mkdir -p ~/.config/nvim
   cp init.vim ~/.config/nvim/init.vim
   ```
3. **Install Plugins:**
   Open Neovim and run `:PlugInstall`.

---

## Ubuntu / Debian Setup
1. **Install Neovim:**
   ```bash
   sudo apt update
   sudo apt install neovim
   ```
2. **Apply Configuration:**
   Create the config directory and copy `init.vim`:
   ```bash
   mkdir -p ~/.config/nvim
   cp init.vim ~/.config/nvim/init.vim
   ```
3. **Install Plugins:**
   Open Neovim and run `:PlugInstall`.

---

## Windows Setup
1. **Install Neovim:**
   Using Chocolatey:
   ```powershell
   choco install neovim
   ```
   *Alternatively, download the installer from the Neovim GitHub releases.*
2. **Apply Configuration:**
   Neovim config on Windows lives in `~/AppData/Local/nvim/`. Create it and copy the file:
   ```powershell
   mkdir $env:LOCALAPPDATA\nvim
   cp init.vim $env:LOCALAPPDATA\nvim\init.vim
   ```
3. **Install Plugins:**
   Open Neovim and run `:PlugInstall`.
