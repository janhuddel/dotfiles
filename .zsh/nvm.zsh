# nvm on macos with brew
if brew --prefix nvm 2> /dev/null ; then
	export NVM_DIR=~/.nvm
	source $(brew --prefix nvm)/nvm.sh
else
    echo "brew nvm not found"
fi
