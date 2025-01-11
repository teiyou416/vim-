"the nerdtree config 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <silent><C-n>     :NERDTreeToggle<CR>
nnoremap <C-f>     :NERDTreeFind<CR>
autocmd bufenter * if tabpagenr('$') == 1 && winnr('$') == 1 && &filetype == 'nerdtree' | q | endif
