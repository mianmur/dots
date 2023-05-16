" theme settings
"let &t_8f = "\<Esc>[41;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme tropical

set ruler
set laststatus=2
set termguicolors
set noshowmode
set linebreak
set hidden
set cursorline
set background=dark
set t_Co=254

syntax on
colors tropical

" compatibility
set nocompatible
filetype on

" text wrap
set wrap

" tabs
set autoindent
set cindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" statusbar
set laststatus=2
set noshowmode

" nuaNce's statusline
hi Sl1 ctermfg=none cterm=none ctermbg=NONE
hi Sl2 ctermfg=none cterm=none ctermbg=NONE
hi Sl3 ctermfg=none cterm=none ctermbg=NONE
hi Slrese ctermfg=none cterm=none ctermbg=none
function! RedrawMode(mode)
	if a:mode == 'n'
		return 'normal mode'
	elseif a:mode == 'i'
		return 'insert mode'
	elseif a:mode == 'R'
		return 'replace mode'
	elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
		return 'visual mode'
	elseif a:mode == 'c'
		return 'command mode'
	elseif a:mode == 't'
		return 'trace mode'
	endif
	return ''
endfunction

function! SetModifiedSymbol(modified)
	if a:modified == 1
	return '// unsaved'
	else
	return ''
	endif
endfunction

function! SetFiletype(filetype)
	if a:filetype == ''
		return 'txt'
	else
		return a:filetype
	endif
endfunction

set statusline=%#Slrese#\ %{RedrawMode(mode())}\ %#Sl1#
set statusline+=%#Sl3#%{SetModifiedSymbol(&modified)}
set statusline+=%#SlRese#
set statusline+=%=
set statusline+=%#Sl2#\ %.20t\ //
set statusline+=\%#Sl2#\ %l,%c



" remappings
imap jk <Esc>
imap JK <Esc>

nnoremap ; :
noremap : ;
noremap % `
noremap ~ %
nnoremap Q @q
nmap <Leader>s :%s//g<Left><Left>
