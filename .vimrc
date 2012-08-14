" Requires for 256 colors in OS X iTerm(2)
set t_Co=256


" Pathogen for easy bundle inclusion
call pathogen#infect()

filetype plugin indent on
:filetype plugin on

" Omni completion
set ofu=syntaxcomplete#Complete

set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" Don’t add empty newlines at the end of files
set noeol

" Status bar
set laststatus=2
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

" Warn on syntax errors
"set statusline+=%#warningmsg#%{SyntasticStatuslineFlag()}%*

" Warn if fileformat isn't Unix
set statusline+=%#warningmsg#%{&ff!='unix'?'['.&ff.']':''}%*

" Warn if file encoding isn't UTF-8
set statusline+=%#warningmsg#%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}%*

" Warn if paste is enabled
set statusline+=%#warningmsg#%{&paste?'[paste]':''}%*

" map escape to double i
inoremap ii <ESC>

"tabs
set tabstop=4

set relativenumber

" Jslint
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=magenta

" Enable syntax highlighting
syntax enable


set nocompatible
