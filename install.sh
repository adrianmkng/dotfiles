#!/usr/bin/env zsh

set -euo pipefail

DOTFILES_HOME="${DOTFILES_HOME:-${HOME}/.dotfiles}"
VUNDLE_HOME="${HOME}/.vim/bundle/Vundle.vim"

install_dotfiles() {
  if [ ! -d "${DOTFILES_HOME}" ] 
  then
    print -P "%F{green} Installing dotfiles to ${DOTFILES_HOME}%f"
    git clone git@github.com:adrianmkng/dotfiles.git ${DOTFILES_HOME}
  else 
    print -P "%F{magenta}${DOTFILES_HOME} already exists.%f"
  fi
}

install_vundle() {
  if [ ! -d "${VUNDLE_HOME}" ]
  then
    print -P "%F{green}Installing Vundle%f"
    git clone https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_HOME}
  else
    print -P "%F{magenta}Vundle already installed%f"
  fi
}

install_dotfiles
install_vundle
