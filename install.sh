#!/usr/bin/env bash

set -euo pipefail

INSTALL_DIR="${INSTALL_DIR:-${HOME}/.dotfiles}"

install_dotfiles() {
  if [[ -a "${INSTALL_DIR}" ]] 
  then
    echo "${INSTALL_DIR} already exists."
    return 0
  else 
    echo "Installing dotfiles to ${INSTALL_DIR}"
    git clone git@github.com:adrianmkng/dotfiles.git ${INSTALL_DIR}
  fi
}

install_dotfiles
