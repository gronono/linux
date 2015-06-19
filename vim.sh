# Configuration VIM
if [ ! -e "$HOME/.vim" ]; then
	ln -sf $HOME/linux/vim $HOME/.vim
fi
if [ ! -e "$HOME/.vimrc" ]; then
	ln -sf $HOME/linux/vimrc $HOME/.vimrc
fi
