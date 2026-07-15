call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'turbio/bracey.vim'
Plug 'girishji/autosuggest.vim'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'lervag/vimtex', { 'tag': 'v2.15' }
Plug 'jalvesaq/Vim-R'
Plug 'teiyou416/hackmd.vim'
Plug 'puremourning/vimspector'
"Plug '/Users/teiyou/dev/hackmd-vim'
call plug#end()

let mapleader = ' '

"config files
source ~/.vim/config/coc.vim
source ~/.vim/config/airline.vim
source ~/.vim/config/rainbow.vim
source ~/.vim/config/nerdcommenter.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/indentline.vim
source ~/.vim/config/rust.vim
source ~/.vim/config/syn.vim
source ~/.vim/config/vimtex.vim
source ~/.vim/config/vcp.vim
source ~/.vim/config/vimspector.vim
"the keybinds
"most important
inoremap jk <Esc>
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l
" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"base config
"set clipboard=unnamed
set number
set clipboard=unnamedplus,unnamed
set hlsearch
set incsearch
autocmd FileType * setlocal formatoptions-=r
set background=light
set splitbelow

"the colorscheme for airline
let g:ale_linters_explicit=1
let g:airline_theme= 'papercolor'
let g:airline_skip_empty_sections = 1

"let g:tex_conceal = ""
"let g:vimtex_syntax_conceal = {'elements': []}
let g:vimtex_syntax_conceal_disable=1
syntax on
let g:tex_conceal = ""
set conceallevel=0
let g:coc_start_at_startup=1

" 針對 Markdown 檔案關閉自動隱藏符號功能
autocmd FileType markdown setlocal conceallevel=0

nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fg :Rg<CR>
nnoremap <silent> <leader>fr :History<CR>
nnoremap <F5> :ALEToggle<CR>
