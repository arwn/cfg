# aliases
alias ls='ls -F'

# prompt
autoload -Uz promptinit
promptinit

PROMPT="%~ %% "

# completions
autoload -Uz compinit
compinit

# history
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
