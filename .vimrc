" My vimrc file :

" Some basic vim tools :

	let mapleader =" "
	syntax on
	filetype plugin on
	set nocompatible
	set encoding=utf-8
	set number
	set relativenumber
	set nrformats+=alpha
	let &t_SI = "\<Esc>]12;8\x7"
	let &t_EI = "\<Esc>]12;15\x7"
	autocmd VimEnter * silent !echo -ne "\033]12;15\007"

" Autocmd for creating shorcuts :

	autocmd BufWritePost ~/.scripts/folders,~/.scripts/configs !bash ~/.scripts/shortcuts.sh

" Copy and paste with clipboard ( to fix : get rid of gvim which is still necessary for the + and * buffer) :

	vnoremap <C-c> "*y :let @+=@*<cr>
	map <C-p> "+p

" Pathogen (plug-in manager) :

	execute pathogen#infect()

" Automatically deletes all tralling whitespace when file is saved :

	autocmd BufWritePre * %s/\s\+$//e

" Open corresponding .pdf :

	map <leader>p :!zathura <c-r>%<backspace><backspace><backspace>pdf &<cr><cr>

" Make all .pdf black :

	nnoremap mb :!pdf_black <cr><cr>

"Make all .pdf white :

	nnoremap mw :!pdf_white <cr><cr>

" Spell-check :

	map <leader>sc :setlocal spell! spelllang=en_us,en_gb,fr<cr>

 " Compile a document into pdf (rmd, tex, md) :

	map <leader>c :w<cr> :!compile_pdf <c-r>%<cr><cr>

" Runs script texclear when leaving .tex file :

	autocmd VimLeave *.tex !texclear

" Automatic compile and preview tex file :

	autocmd Filetype tex setl updatetime=1
	let g:livepreview_previewer = 'zathura'

" Disables automatic commenting on newline after commented line :

	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Navigating with sweetie guides (the one from Luke Smith are pretty nice):

	inoremap <Space><Tab> <Esc>/<++><cr>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><cr>"_c4l
	map <Space><Tab> <Esc>/<++><cr>"_c4l

" Aliases :
	nnoremap gp '"zz
	nnoremap gb<TAB> ``
	inoremap gb<TAB> <Esc>``
	nnoremap J      <c-e>
	nnoremap K      <c-y>
	nnoremap <c-j>  <c-d>
	nnoremap <c-k>  <c-u>
	map <leader>ac :LLPStartPreview<cr>

" Snippets :

"""LATEX/General :

	" count words with F3:
	autocmd FileType tex map <F3> :w !detex \| wc -w<cr>
	autocmd FileType tex inoremap <F3> <ESC>:w !detex \| wc -w<cr>

	autocmd FileType tex inoremap em<TAB> \emp{}<++><ESC>T{i
	autocmd FileType tex inoremap b<TAB> \textbf{}<++><ESC>T{i
	autocmd FileType tex inoremap i<TAB> \textit{}<++><ESC>T{i
	autocmd FileType tex inoremap mkl<TAB> \begin{itemize}<cr><cr>\end{itemize}<cr><cr><++><Esc>3kA\item<Space>

	autocmd FileType tex inoremap g<TAB>  <++>
	autocmd FileType tex nnoremap g<TAB>  i<++><Esc>
	autocmd FileType tex inoremap ni<TAB> <cr>\item<Space>
	autocmd FileType tex inoremap chap<TAB> \chapter{}<Enter><cr><++><Esc>2kf}i
	autocmd FileType tex inoremap sec<TAB> \section{}<cr><cr><++><Esc>2kf}i
	autocmd FileType tex inoremap ssec<TAB> \subsection{}<cr><cr><++><Esc>2kf}i
	autocmd FileType tex inoremap up<TAB> <Esc>/usepackage<cr>o\usepackage{}<Esc>i
	autocmd FileType tex nnoremap up<TAB> /usepackage<cr>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap fig<TAB> \begin{figure}[h]<cr>\centering<cr>\includegraphics[width=0.5\textwidth]{a}<cr><++><cr>\end{figure}<cr><cr><++><Esc>?a<cr>ci{
	autocmd FileType tex inoremap beg<TAB> \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
