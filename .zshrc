# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

GIT_EXE=$(which git)

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# zsh-autocomplete (https://github.com/marlonrichert/zsh-autocomplete)
source ~/.zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Load Starship
eval "$(starship init zsh)"
