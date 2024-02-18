# eza (ls replacement)
# https://github.com/eza-community/eza/
if (( ${+commands[eza]} )); then
	alias ls="eza --group-directories-first"
	alias ll="eza --group-directories-first -l"
	alias la="eza --group-directories-first -la"
fi

alias ..="cd .."
alias home="cd ~ && clear"
alias cls="clear"

# git
alias gst="git status"
