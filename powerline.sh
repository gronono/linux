CURRENT_DIR=`pwd`

#
# https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation
# 
if [ ! -d "$HOME/.fonts" ]; then
	echo "Installing powerline-fonts"
	wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf 
	wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
	mkdir -p ~/.fonts/
	mv PowerlineSymbols.otf ~/.fonts/
	fc-cache -vf ~/.fonts
	mkdir -p ~/.config/fontconfig/conf.d/
	mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
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
