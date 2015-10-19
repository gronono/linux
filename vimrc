execute pathogen#infect()
syntax on
filetype plugin indent on

" Tabulations
set tabstop=2
set shiftwidth=2
set softtabstop=2

if has("autocmd")
	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	" Also don't do it when the mark is in the first line, that is the default
	" position when opening a file.
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif

	" Disable auto commenting
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
endif

" Theme
colorscheme desert

let g:netrw_liststyle=1
