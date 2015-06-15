#
# https://github.com/tpope/vim-pathogen
# 
if [ ! -f "$HOME/.vim/autoload/pathogen.vim" ]; then
	echo "Installing vim-pathogen"
	mkdir -p "$HOME/.vim/autoload"
	mkdir -p "$HOME/.vim/bundle"
	curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim
	
	if [ -f "$HOME/.vimrc" ]; then
		echo "execute pathogen#infect()" >> "$HOME/.vimrc"
	else
		echo "execute pathogen#infect()" >> "$HOME/.vimrc"
		echo "syntax on" >> "$HOME/.vimrc"
		echo "filetype plugin indent on" >> "$HOME/.vimrc"
	fi
fi
