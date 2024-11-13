set number
set relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set expandtab
set tabstop=4
set shiftwidth=0
set softtabstop=0
set autoindent
set smarttab
" Vim-Plug
call plug#begin('~/.vim/plugged')
	Plug 'navarasu/onedark.nvim'
	Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/nerdtree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-surround'
	Plug 'benmills/vimux'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'sirver/ultisnips'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'editorconfig/editorconfig-vim'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'easymotion/vim-easymotion'
	Plug 'mhinz/vim-signify'
	Plug 'yggdroot/indentline'
	Plug 'scrooloose/nerdcommenter'
	Plug 'vim-fugitive'
	Plug 'tpope/vim-repeat'
call plug#end()
let g:onedark_config = {
	\ 'style': 'deep',
	\ 'toggle_style_key': '<leader>ts',
	\ 'ending_tildes': v:true,
	\ 'diagnostics': {
		\ 'darker': v:false,
		\ 'background': v:false,
	\ },
\ }
colorscheme onedark
colorscheme onedark
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode
set hlsearch
set incsearch
set ignorecase
set smartcase