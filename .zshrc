# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

GIT_EXE=$(which git)

# dotfiles aware git
git() {
  if [ "$PWD" = "$HOME" ]; then
    command git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" "$@"
  else
    command git "$@"
  fi
}

# other includes
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)
[[ -d ~/.zsh-autosuggestions ]] && source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf (https://github.com/junegunn/fzf#using-git)
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# Load Starship
eval "$(starship init zsh)"
