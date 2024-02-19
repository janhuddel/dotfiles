# nvm on macos with brew
if brew --prefix nvm &> /dev/null ; then
	export NVM_DIR=~/.nvm
	source $(brew --prefix nvm)/nvm.sh

# nvm on linux
elif [ -f $HOME/.nvm/nvm.sh ]; then
	export NVM_DIR=~/.nvm
	source $NVM_DIR/nvm.sh
	source $NVM_DIR/bash_completion

fi
