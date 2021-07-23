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

" vundle settings
filetype off
call vundle#begin()
Plugin 'gmarik/Vundle.vim'                  " plugin manager
Plugin 'morhetz/gruvbox'                    " colorscheme
Plugin 'drawit'                             " ascii art tool
Plugin 'vim-airline/vim-airline'            " fabulous status bar
Plugin 'ctrlpvim/ctrlp.vim'                 " easy file finding
Plugin 'scrooloose/nerdtree'                " nerd tree
Plugin 'majutsushi/tagbar'                  " tagbar
Plugin 'tpope/vim-fugitive'                 " git command wrapper
Plugin 'rust-lang/rust.vim'                 " rust support
Plugin 'ziglang/zig.vim'                    " zig support
Plugin 'vim-javascript'                     " js support
Plugin 'fatih/vim-go'                       " go support
Plugin 'tikhomirov/vim-glsl'                " glsl support
Plugin 'neoclide/coc.nvim'                  " VSCode-like auto-completion using LSP
call vundle#end()
filetype plugin indent on

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
