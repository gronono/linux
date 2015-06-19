#  https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation
if [ ! -e "$HOME/.fonts" ]; then
	ln -sf $HOME/linux/fonts $HOME/.fonts
	echo "Building font information cache files"
	fc-cache -f
fi

if [ ! -e "$HOME/.config/fontconfig" ]; then
	ln -sf $HOME/linux/fontconfig $HOME/.config/fontconfig
fi

