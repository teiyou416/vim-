" --- vim-sneak 配置 ---
map s <Plug>Sneak_s
map S <Plug>Sneak_S
map f <Plug>Sneak_f
map F <Plug>Sneak_F
let g:sneak#label = 1
let g:sneak#use_ic_feature = 1
let g:sneak#s_next = 1
" 高亮颜色自定义（可选，根据你的主题调整）
highlight Sneak guifg=black guibg=#00ffaf gui=bold ctermfg=black ctermbg=cyan
