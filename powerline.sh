CURRENT_DIR=`pwd`

#
# https://github.com/powerline/fonts
# 
if [ ! -d "$HOME/.fonts" ]; then
	echo "Installing powerline-fonts"
	mkdir -p /tmp/powerline
	cd /tmp/powerline
	git clone https://github.com/powerline/fonts.git
	cd fonts
	./install.sh
	rm -rf /tmp/powerline
fi

#
# https://github.com/milkbikis/powerline-shell
#
if [ ! -f "$HOME/bin/powerline-shell.py" ]; then
	echo "Installing powerline-shell"
	mkdir -p /tmp/powerline
	cd /tmp/powerline
	git clone https://github.com/milkbikis/powerline-shell.git
	cd powerline-shell
	./install.py
	mkdir -p $HOME/bin/powerline-shell
	cp -r /tmp/powerline/powerline-shell $HOME/bin/
	ln -sf powerline-shell/powerline-shell.py $HOME/bin/powerline-shell.py
	rm -rf /tmp/powerline
fi

cd $CURRENT_DIR

function _update_ps1() {
	export PS1="$(powerline-shell.py $? 2> /dev/null)"
}
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
