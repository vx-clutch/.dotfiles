# history
setopt histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# LOADING ---------------------------------------------------------------------
source .zsh/alias.sh
source .zsh/plugins.sh

# CONFIG ----------------------------------------------------------------------

export EDITOR=nvim
export SUDO_EDITOR='/usr/bin/nvim'
export VISUAL=nvim

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(starship init zsh)"

# enter tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
