" import plugings
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'                     " colorscheme
Plug 'vim-airline/vim-airline'                  " fabulous status bar
Plug 'ctrlpvim/ctrlp.vim'                       " easy file finding
Plug 'scrooloose/nerdtree'                      " nerd tree
Plug 'majutsushi/tagbar'                        " tagbar
Plug 'tpope/vim-fugitive'                       " git command wrapper
Plug 'rust-lang/rust.vim'                       " rust language support
Plug 'ziglang/zig.vim'                          " zig language support
Plug 'fatih/vim-go'                             " go language support
Plug 'tikhomirov/vim-glsl'                      " glsl language support
Plug 'elmcast/elm-vim'                          " elm language support
Plug 'neoclide/coc.nvim', {'branch':'release'}  " vscode-like auto-completion using LSP
Plug 'skanehira/vsession'                       " session manager
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
colorscheme onedark

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules|zig-out|zig-cache',
  \ 'file': '\v\.(exe|pdb|so|dll|o|obj|dylib|a)$',
  \ }

" coc related settings
source $HOME/.vim/coc-settings.vim

" keyboard mappings for vim-go command
au FileType go nmap <leader>r <Plug>(go-run)

" avoid freezing the vim process forever, see
" https://github.com/neovim/neovim/issues/6660
if has("win32") && has("nvim")
  nnoremap <C-z> <nop>
  inoremap <C-z> <nop>
  vnoremap <C-z> <nop>
  snoremap <C-z> <nop>
  xnoremap <C-z> <nop>
  cnoremap <C-z> <nop>
  onoremap <C-z> <nop>
endif
