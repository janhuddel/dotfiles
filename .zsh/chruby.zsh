# check chruby
if [ -f /opt/homebrew/opt/chruby/share/chruby/chruby.sh ]; then
	source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
	source /opt/homebrew/opt/chruby/share/chruby/auto.sh
	chruby ruby-3.1.3 # run chruby to see actual version
fi
