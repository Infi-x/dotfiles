# Ensure Zsh is interactive, if not, exit.
# This should typically be near the top if you don't want any commands
# to run in non-interactive shell sessions.
[[ -o interactive ]] || return

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions) # Add other plugins you want here, e.g., zsh-autosuggestions, zsh-syntax-highlighting

# Source Oh My Zsh. THIS MUST BE SOURCED BEFORE YOUR CUSTOM CONFIGURATIONS.
source $ZSH/oh-my-zsh.sh

# --- User configuration starts here ---

# Aliases
# Oh My Zsh provides some aliases, but these will override or add to them.
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt
# Oh My Zsh themes define the prompt. If you want a custom prompt that overrides
# the theme, you can define PROMPT here. However, robbyrussell is simple enough
# that your custom PROMPT might conflict. If you want the robbyrussell prompt,
# remove or comment out the following PROMPT line.
# PROMPT='[%n@%m %1d]$ '

# ASDF (Language Version Manager)
export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"

# Zsh completion for asdf
# The fpath needs to include the asdf completions directory.
# Oh My Zsh's compinit will then pick it up.
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

# Neofetch
neofetch

# SSH Agent
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

# Android SDK
export ANDROID_HOME=$HOME/Data/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Input Method (Fcitx)
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx

# --- Oh My Zsh related configurations (optional but can be uncommented) ---
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi
# export ARCHFLAGS="-arch $(uname -m)"
#
#
export VKD3D_CONFIG=dxr11,dxr
export PROTON_ENABLE_NVAPI=1
export PROTON_ENABLE_NGX_UPDATER=1
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
