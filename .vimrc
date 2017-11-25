call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax'

call plug#end()

:set filetype=on
:filetype plugin on
:filetype indent on "Follows language rules for indenting
:set encoding=utf-8
"Various editing options
:set bs=indent,eol,start
:set textwidth=79
:set autochdir
:set tabstop=2
:set expandtab
:set sw=2
:set showcmd
:set nu
:set syntax=on

let mapleader = ','

nnoremap <Leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

:colorscheme molokai

set statusline=%#warningmsg#
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['javascript'],
                            \ 'passive_filetypes': [] }

set autoread

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = ['--fix']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exe = 'eslint'

function! SyntasticCheckHook(errors)
  checktime
endfunction

map <C-n> :NERDTreeToggle<CR>

let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 4

let g:NERDTreeWinSize = 50

"split navigation hotkey remappings
nnoremap  <C-J> <C-W><C-J>
nnoremap  <C-K> <C-W><C-K>
nnoremap  <C-L> <C-W><C-L>
nnoremap  <C-H> <C-W><C-H>

set splitbelow
set splitright

augroup misc
  au BufWinEnter *.plist, call ReadPlist()
augroup end

let g:used_javascript_libs = 'react'

inoremap jk <ESC>
let mapleader = "<Space>"
