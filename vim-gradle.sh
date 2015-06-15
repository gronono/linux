#
# https://github.com/tfnico/vim-gradle
#
if [ ! -d "$HOME/.vim/bundle/vim-gradle" ]; then
	echo "Installing vim-gradle"
	dir=`pwd`
	mkdir -p ~/.vim/bundle
	cd ~/.vim/bundle
	git clone https://github.com/tfnico/vim-gradle
	cd $dir
fi
