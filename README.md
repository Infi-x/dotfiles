# My Dotfiles
This repository contains my personal configuration files for Linux.

## Setup on a new Arch-based system

1.  **Install Git and Zsh**:
    ```bash
    sudo pacman -S git zsh
    ```

2.  **Clone the dotfiles repository**:
    ```bash
    git clone --bare git@github.com:Infi-x/dotfiles.git $HOME/.dotfiles
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    dotfiles checkout
    ```

3.  **Install Oh My Zsh**:
    ```bash
    sh -c "$(curl -fsSL [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"
    ```

4.  **Install Zsh plugins**:
    ```bash
    git clone [https://github.com/zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
    (Note: `zsh-syntax-highlighting` is also very useful)

5.  **Install Core Applications**:
    ```bash
    sudo pacman -S wezterm fcitx5 neofetch
    ```

6.  **Install ASDF**:
    Follow the official ASDF installation guide.
    ```bash
    git clone [https://github.com/asdf-vm/asdf.git](https://github.com/asdf-vm/asdf.git) ~/.asdf --branch v0.14.0
    ```

7.  **Change Shell**:
    Change your default shell to Zsh.
    ```bash
    chsh -s $(which zsh)
    ```

8.  **Setup Android SDK**:
    Download Android Studio and follow the setup wizard.
    The environment variables in `env.sh` assume the SDK is located at `~/Data/Android/sdk`.
