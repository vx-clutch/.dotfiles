export PATH=$PATH:/snap/bin

source ~/.dotfiles/.zsh/alias.sh
source ~/.dotfiles/.zsh/zap.sh

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(starship init zsh)"

# enter tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
