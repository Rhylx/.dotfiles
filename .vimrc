" My vimrc file : 

" Some basic vim tools : 

	syntax on
	set nocompatible
	set encoding=utf-8
	set number
	set relativenumber
	set nrformats+=alpha
	let &t_SI = "\<Esc>]12;8\x7"
	let &t_EI = "\<Esc>]12;15\x7"
	autocmd VimEnter * silent !echo -ne "\033]12;15\007"
