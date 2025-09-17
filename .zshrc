# Your .zshrc
[[ -o interactive ]] || return

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Source your custom configuration files
source ~/.config/zsh/aliases.sh
source ~/.config/zsh/env.sh

# ASDF completion needs to be after the plugins are sourced
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

# neofetch can be left here or moved to env.sh
neofetch
