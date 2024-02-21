# vx.dotfiles

## Prerequisites

- *git*
- *zsh*
- *zap*
- *a nerd font* (recommended)

## Installation

```
git clone https://github.com/vx-clutch/.dotfiles.git $HOME/.dotfiles
```
```
cd ~/.dotfiles/.zsh
sudo pacman -S $(cat paclist)
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
stow .
```


and yes i enjoy the rose-pine theme
