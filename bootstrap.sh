#!/usr/bin/env bash

# Set terminal colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

if [ -f usr/local/bin/brew ]; then
  echo -e "${GREEN}[+]${NC} ${YELLOW}Homebrew already installed!${NC}"
else
  echo -e "${YELLOW}[+]${NC} Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
  && echo -e "${GREEN}[+]${NC} Homebrew successfully installed!" \
  || echo -e "${RED}[X]${NC} Homebrew installation failed..."
fi


# Install ansible globally
if [ -f /usr/local/bin/ansible ]; then
  echo -e "${GREEN}[+]${NC} ${YELLOW} Ansible already installed!${NC}"
else
  echo -e "${GREEN}[+]${NC} Installing Ansible..."
  brew install ansible \
  && echo -e "${GREEN}[+]${NC} Ansible successfully installed!" \
  || echo -e "${RED}[X]${NC} Ansible install failed..."
fi


# Install Oh-My-Zsh
if [ -d ${HOME}/.oh-my-zsh ]; then
  echo -e "${GREEN}[+]${NC} ${YELLOW} Oh-My-Zsh already installed!${NC}"
else
  echo -e "${GREEN}[+]${NC} Installing Oh-My-Zsh..."
  brew install ansible \
  && echo -e "${GREEN}[+]${NC} Oh-My-Zsh successfully installed!" \
  || echo -e "${RED}[X]${NC} Oh-My-Zsh install failed..."
fi
