# nvm on macos with brew
if brew --prefix nvm &> /dev/null ; then
	export NVM_DIR=~/.nvm
	source $(brew --prefix nvm)/nvm.sh
fi
