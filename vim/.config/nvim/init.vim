call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'ap/vim-css-color' " https://github.com/ap/vim-css-color
Plug 'airblade/vim-gitgutter' " https://github.com/airblade/vim-gitgutter
Plug 'preservim/nerdtree' " https://github.com/preservim/nerdtree
" Plug 'neoclide/coc.nvim' " https://github.com/neoclide/coc.nvim
Plug 'chrisbra/csv.vim', {'do': 'yarn install --frozen-lockfile'} " https://github.com/chrisbra/csv.vim
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " https://github.com/numirias/semshi
" Plug 'dense-analysis/ale' " https://github.com/dense-analysis/ale
call plug#end()

set nocompatible
filetype indent plugin on
syntax on
set number relativenumber
set autoindent
set tabstop=4
set softtabstop=4
set showcmd
set showmatch
set incsearch
set hlsearch
set path+=**
set wildmenu

let mapleader=","
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
