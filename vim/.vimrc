" import plugings
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'                    " colorscheme
Plug 'vim-airline/vim-airline'            " fabulous status bar
Plug 'ctrlpvim/ctrlp.vim'                 " easy file finding
Plug 'scrooloose/nerdtree'                " nerd tree
Plug 'majutsushi/tagbar'                  " tagbar
Plug 'tpope/vim-fugitive'                 " git command wrapper
Plug 'rust-lang/rust.vim'                 " rust support
Plug 'ziglang/zig.vim'                    " zig support
Plug 'fatih/vim-go'                       " go support
Plug 'tikhomirov/vim-glsl'                " glsl support
Plug 'neoclide/coc.nvim'                  " VSCode-like auto-completion using LSP
Plug 'skanehira/vsession'                 " Session manager
call plug#end()

" basic settings
filetype plugin indent on
syntax on
set nocompatible
set number
set laststatus=2
set incsearch
set hlsearch
set hidden

" return to normal mode more naturaly
inoremap jk <esc>

" tab settings
set expandtab
set tabstop=2
set shiftwidth=2

" c/c++ language auto-indent settings
set autoindent
set cinoptions+=:0,g0,N-s

" customized colorscheme
colorscheme gruvbox

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules',
  \ 'file': '\v\.(exe|so|dll|o|obj|dylib|a)$',
  \ }

" coc related settings
source $HOME/.vim/coc-settings.vim

" keyboard mappings for vim-go command
au FileType go nmap <leader>r <Plug>(go-run)
