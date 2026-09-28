# Tmux Setup Guide

This folder contains the `.tmux.conf` file for configuring Tmux.

## Prerequisites
This configuration uses **Tmux Plugin Manager (TPM)**. Before or right after copying the config, install TPM:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

---

## macOS Setup
1. **Install Tmux:**
   ```bash
   brew install tmux
   ```
2. **Apply Configuration:**
   Copy the `.tmux.conf` file to your home directory:
   ```bash
   cp .tmux.conf ~/.tmux.conf
   ```
3. **Reload / Install Plugins:**
   Start `tmux` and press `Prefix + I` (default: `Ctrl+b` then `I`) to fetch and install plugins.

---

## Ubuntu / Debian Setup
1. **Install Tmux:**
   ```bash
   sudo apt update
   sudo apt install tmux
   ```
2. **Apply Configuration:**
   Copy the `.tmux.conf` file to your home directory:
   ```bash
   cp .tmux.conf ~/.tmux.conf
   ```
3. **Reload / Install Plugins:**
   Start `tmux` and press `Prefix + I` to install plugins.

---

## Windows Setup (via WSL)
Tmux is best used within the Windows Subsystem for Linux (WSL) on Windows.
1. **Install Tmux in WSL (Ubuntu):**
   ```bash
   sudo apt update
   sudo apt install tmux
   ```
2. **Apply Configuration:**
   Inside your WSL terminal, copy the `.tmux.conf` to your home directory:
   ```bash
   cp .tmux.conf ~/.tmux.conf
   ```
3. **Reload / Install Plugins:**
   Start `tmux` and press `Prefix + I` to install plugins.
