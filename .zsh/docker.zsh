# Helpful aliases: https://github.com/akarzim/zsh-docker-aliases

DOCKER_AVAILABLE=false

# check podman
if (( ${+commands[podman]} )); then
    DOCKER_AVAILABLE=true
    
	alias docker="podman"
	alias dc="podman compose"
else (( ${+commands[docker]} ))
	DOCKER_AVAILABLE=true
	
	alias dc="docker-compose"
fi

if [ "$DOCKER_AVAILABLE" = true ] ; then
	alias dki="docker images"
	alias dkps="docker ps"
fi
