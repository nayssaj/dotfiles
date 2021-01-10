call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'sainnhe/edge'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'michal-h21/vim-zettel'

call plug#end()

" Mandatory for vimwiki
" Disable vi compatible mode
set nocompatible
filetype plugin indent on
syntax enable

" Show line numbers on the left
set number
" Line numbers are relative
set relativenumber
        
" tab is 4 whitespaces long
set tabstop=4
" tab expand to spaces
set expandtab

let mapleader = ','

" Horizontal split open below
set splitbelow
" Vertical split open on the right
set splitright

" split pane navigation
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

set termguicolors
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1
colorscheme edge

let g:lightline = {'colorscheme' : 'edge'}

nnoremap <leader>s :Ag<space>

" Vimwiki + Zettel config
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_list = [{'path': '~/vimwiki/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

let g:zettel_options = [{"template" :  "~/Templates/base.tpl"}]
let g:zettel_format = '%Y%m%d%H%M%S'

nnoremap <leader>zn :ZettelNew<space>
nnoremap <leader>zs :ZettelSearch<space>
