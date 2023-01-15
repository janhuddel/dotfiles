# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

GIT_EXE=$(which git)

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)
if [ -d ~/.zsh-autosuggestions ]; then
  source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# fzf (https://github.com/junegunn/fzf#using-git)
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# Load Starship
eval "$(starship init zsh)"
