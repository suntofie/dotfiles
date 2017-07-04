" Показывать номера строк
set number
" ???
set noshowmode
"set laststatus=2
" Включить подсветку синтаксиса
syntax on
" Подсвечивание результатов поиска
set hlsearch
" умная зависимость от регистра. Детали `:h smartcase`
"set ignorecase
"set smartcase
" Кодировка текста по умолчанию utf8
set termencoding=utf8
" Показывать положение курсора всё время.
set ruler
" Поддержка мыши
set mouse=a
set mousemodel=popup
" Скрывать указатель мыши, когда печатаем
set mousehide
" Не переносить строки
set nowrap
" Размер табуляции по умолчанию
set shiftwidth=3
set softtabstop=3
set tabstop=3
" Включаем "умные" отступы, например, авто отступ после `{`
set smartindent
" Отображение парных символов
set showmatch
" Подсвечивать линию текста, на которой находится курсор
"set cursorline
"highlight CursorLine guibg=4 ctermbg=0
"highlight CursorLine term=none cterm=none
" Увеличение размера истории
set history=200
" Дополнительная информация в строке состояния
"set wildmenu
" Настройка отображения специальных символов
set list listchars=tab:→\ ,trail:·

nnoremap <C-Left>   :tabprev<CR>
nnoremap <C-Right>  :tabnext<CR>
nnoremap <A-Insert> :tabnew<CR>
nnoremap <C-q>      :q<CR>
nnoremap <Q>        q

set nocompatible              " be iMproved, required
filetype off                  " required

" vim-plug   (curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
"call plug#begin('~/vim/plugins')
"call plug#end()

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'matze/vim-move'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'lilydjwg/colorizer'
Plugin 'itchyny/lightline.vim'
Plugin 'dracula/vim'
Plugin 'edkolev/promptline.vim'
call vundle#end()            " required

"
set background=dark
color dracula
:set showtabline=2

" nerdtree
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" vim-move
let g:move_key_modifier = 'C'

vmap <C-Down> <Plug>MoveBlockDown
vmap <C-Up> <Plug>MoveBlockUp
nmap <C-Down> <Plug>MoveLineDown
nmap <C-Up> <Plug>MoveLineUpp

" airline
"let g:airline_theme = 'simple'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" promptline
let g:promptline_preset = {
    \'a'    : [ promptline#slices#cwd() ],
    \'x'    : [ promptline#slices#vcs_branch() ],
    \'warn' : [ promptline#slices#last_exit_code() ]}
"let g:promptline_powerline_symbols = 1
"let g:promptline_symbols = {
    \ 'left'       : '',
	 \ 'right'      : '',
    \ 'left_alt'   : '',
    \ 'dir_sep'    : ' / ',
    \ 'truncation' : '...',
    \ 'vcs_branch' : '',
    \ 'space'      : ' '}
