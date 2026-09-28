# Dotfiles Overview

Welcome to the configuration repository! This repository contains personalized configuration files and shortcuts for **Tmux**, **Neovim**, and **Git**, allowing for quick and consistent setup across different environments (macOS, Ubuntu, and Windows).

## Repository Structure

The project is structured into specific folders for each tool, containing the actual configuration files and detailed setup instructions. 

### Configurations
- **`tmux/`**: Contains the `.tmux.conf` file and a `setup.md` guide. It includes custom bindings, pane management shortcuts, and relies on the Tmux Plugin Manager (TPM).
- **`nvim/`**: Contains the `init.vim` configuration file and a `setup.md` guide. It relies on `vim-plug` for plugin management.
- **`git/`**: Contains the `.gitconfig` file with custom aliases and a `setup.md` guide.

### Cheat Sheets & Shortcuts
At the root of this repository, you'll find handy cheat sheets that document the shortcuts and aliases set up in these configurations:
- [`tmux_shortcuts.md`](./tmux_shortcuts.md): A comprehensive list of Tmux shortcuts, including default commands and custom bindings.
- [`vim_shortcuts.md`](./vim_shortcuts.md): Essential Vim navigation, editing, and mode shortcuts.
- [`git_shortcuts.md`](./git_shortcuts.md): A reference list of Git aliases defined in your `.gitconfig`.

### Resources
- [`links.md`](./links.md): Contains the URLs and external resources found within these configuration files (e.g., links to vim-plug and vim-tmux-navigator).

## Getting Started

To install any of these configurations on a new machine, navigate to the specific tool's folder and follow the instructions in its `setup.md` file:
- **[Tmux Setup Guide](./tmux/setup.md)**
- **[Neovim Setup Guide](./nvim/setup.md)**
- **[Git Setup Guide](./git/setup.md)**
