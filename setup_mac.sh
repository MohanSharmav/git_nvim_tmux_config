#!/usr/bin/env bash
set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}Starting macOS Setup for Dotfiles...${NC}"

# 1. Ensure Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo -e "${YELLOW}Homebrew not found. Installing Homebrew...${NC}"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo -e "${GREEN}Homebrew is already installed.${NC}"
fi

echo -e "${BLUE}Installing dependencies (Git, Tmux, Neovim)...${NC}"
brew install git tmux neovim

# 2. Setup Git
echo -e "${BLUE}Configuring Git...${NC}"
cp git/.gitconfig ~/.gitconfig
cp git/.gitignore_global ~/.gitignore_global
echo -e "${GREEN}Git setup complete.${NC}"

# 3. Setup Tmux
echo -e "${BLUE}Configuring Tmux...${NC}"
cp tmux/.tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux
cp tmux/cpu.sh ~/.tmux/cpu.sh
chmod +x ~/.tmux/cpu.sh
cp -r tmux/tmux-battery ~/.tmux/
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo -e "${YELLOW}Installing Tmux Plugin Manager (TPM)...${NC}"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo -e "${GREEN}TPM is already installed.${NC}"
fi
echo -e "${GREEN}Tmux setup complete.${NC}"

# 4. Setup Neovim
echo -e "${BLUE}Configuring Neovim...${NC}"
mkdir -p ~/.config/nvim
cp -r nvim/* ~/.config/nvim/
if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    echo -e "${YELLOW}Installing vim-plug...${NC}"
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
else
    echo -e "${GREEN}vim-plug is already installed.${NC}"
fi
echo -e "${GREEN}Neovim setup complete.${NC}"

echo -e "${BLUE}=========================================${NC}"
echo -e "${GREEN}macOS Setup Completed Successfully!${NC}"
echo -e "Next steps:"
echo -e "  1. Open Neovim ('nvim') and run ':PlugInstall' to install plugins."
echo -e "  2. Open Tmux ('tmux') and press 'Prefix + I' (Ctrl+b, then I) to install tmux plugins."
echo -e "${BLUE}=========================================${NC}"
