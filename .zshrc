# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

# dotfiles aware git
git() {
  if [ "$PWD" = "$HOME" ]; then
    command git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" "$@"
  else
    command git "$@"
  fi
}

# Node Version Manager (nvm)
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh

# ruby/chruby
[[ -f ~/.zsh/chruby.zsh ]] && source ~/.zsh/chruby.zsh

# zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)
[[ -d ~/.zsh-autosuggestions ]] && source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf (https://github.com/junegunn/fzf#using-git)
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# docker / podman
[[ -f ~/.zsh/docker.zsh ]] && source ~/.zsh/docker.zsh

# other includes
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
#[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/auto-complete.zsh ]] && source ~/.zsh/auto-complete.zsh

# Load Starship
eval "$(starship init zsh)"
