# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

GIT_EXE=$(which git)

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# zsh-autocomplete (https://github.com/marlonrichert/zsh-autocomplete)
if [ -d ~/.zsh-autocomplete ]; then
  source ~/.zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi

# Load Starship
eval "$(starship init zsh)"
