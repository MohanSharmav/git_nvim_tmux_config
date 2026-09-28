# Git Setup Guide

This folder contains the `.gitconfig` file with your custom Git aliases and configurations.

---

## macOS Setup
1. **Install Git:**
   Git is usually pre-installed via Xcode Command Line Tools. You can also use Homebrew:
   ```bash
   brew install git
   ```
2. **Apply Configuration:**
   Copy the `.gitconfig` file to your home directory:
   ```bash
   cp .gitconfig ~/.gitconfig
   ```

---

## Ubuntu / Debian Setup
1. **Install Git:**
   ```bash
   sudo apt update
   sudo apt install git
   ```
2. **Apply Configuration:**
   Copy the `.gitconfig` file to your home directory:
   ```bash
   cp .gitconfig ~/.gitconfig
   ```

---

## Windows Setup
1. **Install Git:**
   Download and install [Git for Windows (Git Bash)](https://gitforwindows.org/) or install via Chocolatey:
   ```powershell
   choco install git
   ```
2. **Apply Configuration:**
   Copy the `.gitconfig` file to your user profile directory. In PowerShell or Command Prompt:
   ```powershell
   copy .gitconfig C:\Users\%USERNAME%\.gitconfig
   ```
   *(Or just place it in `C:\Users\YourName\` manually).*
