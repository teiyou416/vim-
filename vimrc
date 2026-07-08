call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'prabirshrestha/vim-lsp'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'vim-syntastic/syntastic'
Plug 'turbio/bracey.vim'
Plug 'girishji/autosuggest.vim'
"Plug 'olimorris/onedarkpro.nvim'
"Plug 'mbledkowski/neuleetcode.vim'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'lifepillar/vim-solarized8'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
Plug 'christoomey/vim-tmux-navigator'
Plug 'lervag/vimtex', { 'tag': 'v2.15' }
Plug 'jalvesaq/Vim-R'
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'teiyou416/hackmd.vim'
"Plug '/Users/teiyou/dev/hackmd-vim'
call plug#end()
"config files
source ~/.vim/config/coc.vim
source ~/.vim/config/airline.vim
source ~/.vim/config/rainbow.vim
source ~/.vim/config/nerdcommenter.vim
source ~/.vim/config/leetcode.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/indentline.vim
source ~/.vim/config/rust.vim
source ~/.vim/config/syn.vim
source ~/.vim/config/vimtex.vim
source ~/.vim/config/vcp.vim
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
"the color config 
"set termguicolors
"let g:tokyonight_style = 'storm' " available: night, storm
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight
"colorscheme gruvbox
"let g:gruvbox_contrast_dark='hard'
"colorscheme solarized8_high
"colorscheme blue
"colorscheme  onedark_vivi
"colorscheme solarized
"d"colorscheme one
autocmd FileType * setlocal formatoptions-=r
set background=dark
set splitbelow
"the colorscheme for airline
"let g:airline_theme='one'
let mapleader = ' '
let g:ale_linters_explicit=1
let g:coc_start_at_startup=1
"let g:tex_conceal = ""
"let g:vimtex_syntax_conceal = {'elements': []}
let g:vimtex_syntax_conceal_disable=1
syntax on
let g:tex_conceal = ""
set conceallevel=0

" 針對 Markdown 檔案關閉自動隱藏符號功能
autocmd FileType markdown setlocal conceallevel=0

nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fg :Rg<CR>
nnoremap <silent> <leader>fr :History<CR>
nnoremap <F5> :ALEToggle<CR>
