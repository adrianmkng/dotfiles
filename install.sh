#!/usr/bin/env zsh

set -euo pipefail

DOTFILES_HOME="${DOTFILES_HOME:-${HOME}/.dotfiles}"

install_dotfiles() {
  if [ ! -d "${DOTFILES_HOME}" ] 
  then
    #print -P "%F{green} Installing dotfiles to ${DOTFILES_HOME}%f"
    echo "Installing dotfiles to $DOTFILES_HOME"
    git clone git@github.com:adrianmkng/dotfiles.git ${DOTFILES_HOME}
  else 
    #print -P "%F{magenta}${DOTFILES_HOME} already exists.%f"
    echo "$DOTFILES_HOME already exists."
  fi
  ln -s ${DOTFILES_HOME}/.vimrc  ${HOME}/.vimrc
}

install_vimplug() {
  curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install_dotfiles
install_vimplug
