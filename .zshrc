export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git aws kubectl)

source $ZSH/oh-my-zsh.sh

alias tcl='find . -name "**\.terra*" -exec rm -rf {} +'
