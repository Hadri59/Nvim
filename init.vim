" Simple config
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt=noinsert,menuone,noselect
" :set cc=80
:set nocompatible


call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim',{'branch': 'release'}
Plug 'tibabit/vim-templates'

call plug#end()

" NERDTree config
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
nnoremap <C-f> : NERDTreeFocus<CR>
nnoremap <C-n> : NERDTree<CR>
noremap <C-t> : NERDTreeToggle<CR> "ShortKey for NERDTree, here control-t

inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>

" TagBar config
nmap <C-v> :TagbarToggle<CR>

" Auto-completion config
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:tmpl_search_paths = ['~/.config/nvim/templates/']

:colorscheme nord

autocmd FileType json syntax match Comment +\/\/.\+$+

