let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'coc-snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'coc-snippets-expand', 1)
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <Plug>(ale_complete) :ALEComplete
inoremap <silent> <SNR>64_AutoPairsReturn =AutoPairsReturn()
inoremap <silent> <Plug>NERDCommenterInsert :call nerdcommenter#Comment('i', "Insert")
inoremap <silent> <expr> <PageUp> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
inoremap <silent> <expr> <PageDown> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
inoremap <silent> <expr> <C-Y> coc#pum#visible() ? coc#pum#confirm() : coc#inline#visible() ? coc#inline#accept() :"\"
inoremap <silent> <expr> <Up> coc#pum#visible() ? coc#pum#prev(0) : coc#inline#visible() ? coc#inline#prev() :"\<Up>"
inoremap <silent> <expr> <Down> coc#pum#visible() ? coc#pum#next(0) : coc#inline#visible() ? coc#inline#next() :"\<Down>"
inoremap <silent> <expr> <C-P> coc#pum#visible() ? coc#pum#prev(1) : coc#inline#visible() ? coc#inline#prev() : "\"
inoremap <silent> <expr> <C-N> coc#pum#visible() ? coc#pum#next(1) : coc#inline#visible() ? coc#inline#next() : "\"
imap <C-E> <Plug>(coc-snippets-expand-jump)
imap <C-L> <Plug>(coc-snippets-expand)
inoremap <silent> <expr> <C-O> coc#refresh()
inoremap <silent> <expr> <C-Space> coc#refresh()
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\"
nnoremap  :CocCommand
vmap  <Plug>(coc-snippets-select)
nnoremap  h
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap <silent>  :NERDTreeToggle
nmap  ca <Plug>NERDCommenterAltDelims
xmap  cu <Plug>NERDCommenterUncomment
nmap  cu <Plug>NERDCommenterUncomment
xmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
xmap  cl <Plug>NERDCommenterAlignLeft
nmap  cl <Plug>NERDCommenterAlignLeft
nmap  cA <Plug>NERDCommenterAppend
xmap  cy <Plug>NERDCommenterYank
nmap  cy <Plug>NERDCommenterYank
xmap  cs <Plug>NERDCommenterSexy
nmap  cs <Plug>NERDCommenterSexy
xmap  ci <Plug>NERDCommenterInvert
nmap  ci <Plug>NERDCommenterInvert
nmap  c$ <Plug>NERDCommenterToEOL
xmap  cn <Plug>NERDCommenterNested
nmap  cn <Plug>NERDCommenterNested
xmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
xmap  c  <Plug>NERDCommenterToggle
xmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
nnoremap <silent>  fr :History
nnoremap <silent>  fg :Rg
nnoremap <silent>  ff :Files
nnoremap <silent>  y :CocList -A --normal yank
nnoremap \n :NERDTreeFocus
noremap <silent> \ts :CocList tasks
nmap \aw <Plug>(coc-codeaction-selected)w
xmap \a <Plug>(coc-codeaction-selected)
nmap \rn <Plug>(coc-rename)
nmap <silent> \= <Plug>(coc-diagnostic-next)
nmap <silent> \- <Plug>(coc-diagnostic-prev)
nnoremap <nowait> <silent> \d :CocList diagnostics
nnoremap \h :call Show_documentation()
omap ac <Plug>(coc-classobj-a)
xmap ac <Plug>(coc-classobj-a)
omap af <Plug>(coc-funcobj-a)
xmap af <Plug>(coc-funcobj-a)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap <silent> gi <Plug>(coc-implementation)
nmap go :TagbarToggle
nmap gcc <Plug>NERDCommenterToggle
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gD :tab sp<Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-definition)
omap kc <Plug>(coc-classobj-i)
xmap kc <Plug>(coc-classobj-i)
omap kf <Plug>(coc-funcobj-i)
xmap kf <Plug>(coc-funcobj-i)
nmap ts <Plug>(coc-translator-p)
nmap tt :CocCommand explorer
vnoremap <silent> <Plug>(coc-explorer-key-v-ai) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-ai'])
vnoremap <silent> <Plug>(coc-explorer-key-v-ii) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-ii'])
vnoremap <silent> <Plug>(coc-explorer-key-v-al) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-al'])
vnoremap <silent> <Plug>(coc-explorer-key-v->>) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v->>'])
vnoremap <silent> <Plug>(coc-explorer-key-v-<<) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-<<'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]C) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-]C'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[C) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[C'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]c) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-]c'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[c) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[c'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]D) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-]D'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[D) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[D'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]d) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-]d'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[d) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[d'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]m) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-]m'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[m) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[m'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]i) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-]i'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[i) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[i'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-]]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[[) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[['])
vnoremap <silent> <Plug>(coc-explorer-key-v-gb) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-gb'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gf) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-gf'])
vnoremap <silent> <Plug>(coc-explorer-key-v-F) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-F'])
vnoremap <silent> <Plug>(coc-explorer-key-v-f) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-f'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gd) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-gd'])
vnoremap <silent> <Plug>(coc-explorer-key-v-X) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-X'])
vnoremap <silent> <Plug>(coc-explorer-key-v-q) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-q'])
vnoremap <silent> <Plug>(coc-explorer-key-v-?) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-?'])
vnoremap <silent> <Plug>(coc-explorer-key-v-R) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-R'])
vnoremap <silent> <Plug>(coc-explorer-key-v-g.) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-g.'])
vnoremap <silent> <Plug>(coc-explorer-key-v-zh) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-zh'])
vnoremap <silent> <Plug>(coc-explorer-key-v-r) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-r'])
vnoremap <silent> <Plug>(coc-explorer-key-v-A) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-A'])
vnoremap <silent> <Plug>(coc-explorer-key-v-a) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-a'])
vnoremap <silent> <Plug>(coc-explorer-key-v-dF) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-dF'])
vnoremap <silent> <Plug>(coc-explorer-key-v-df) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-df'])
vnoremap <silent> <Plug>(coc-explorer-key-v-P) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-P'])
vnoremap <silent> <Plug>(coc-explorer-key-v-p) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-p'])
vnoremap <silent> <Plug>(coc-explorer-key-v-d[space]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-d[space]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-da) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-da'])
vnoremap <silent> <Plug>(coc-explorer-key-v-dt) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-dt'])
vnoremap <silent> <Plug>(coc-explorer-key-v-dd) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-dd'])
vnoremap <silent> <Plug>(coc-explorer-key-v-y[space]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-y[space]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-ya) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-ya'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yt) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-yt'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yy) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-yy'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yn) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-yn'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yp) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-yp'])
vnoremap <silent> <Plug>(coc-explorer-key-v-II) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-II'])
vnoremap <silent> <Plug>(coc-explorer-key-v-Ic) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-Ic'])
vnoremap <silent> <Plug>(coc-explorer-key-v-Il) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-Il'])
vnoremap <silent> <Plug>(coc-explorer-key-v-ic) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-ic'])
vnoremap <silent> <Plug>(coc-explorer-key-v-il) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-il'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gs) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-gs'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[bs]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[bs]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-t) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-t'])
vnoremap <silent> <Plug>(coc-explorer-key-v-E) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-E'])
vnoremap <silent> <Plug>(coc-explorer-key-v-s) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-s'])
vnoremap <silent> <Plug>(coc-explorer-key-v-e) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-e'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[cr]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[cr]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[2-LeftMouse]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gh) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-gh'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gl) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-gl'])
vnoremap <silent> <Plug>(coc-explorer-key-v-K) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-K'])
vnoremap <silent> <Plug>(coc-explorer-key-v-J) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-J'])
vnoremap <silent> <Plug>(coc-explorer-key-v-l) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-l'])
vnoremap <silent> <Plug>(coc-explorer-key-v-h) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-h'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[tab]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-[tab]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-*) :call coc#rpc#request('doKeymap', ['coc-explorer-key-v-*'])
nnoremap <silent> <Plug>(coc-explorer-key-n->>) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n->>'])
nnoremap <silent> <Plug>(coc-explorer-key-n-<<) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-<<'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]C) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-]C'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[C) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[C'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]c) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-]c'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[c) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[c'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]D) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-]D'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[D) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[D'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]d) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-]d'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[d) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[d'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]m) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-]m'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[m) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[m'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]i) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-]i'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[i) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[i'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-]]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[[) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[['])
nnoremap <silent> <Plug>(coc-explorer-key-n-gb) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-gb'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gf) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-gf'])
nnoremap <silent> <Plug>(coc-explorer-key-n-F) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-F'])
nnoremap <silent> <Plug>(coc-explorer-key-n-f) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-f'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gd) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-gd'])
nnoremap <silent> <Plug>(coc-explorer-key-n-X) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-X'])
nnoremap <silent> <Plug>(coc-explorer-key-n-q) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-q'])
nnoremap <silent> <Plug>(coc-explorer-key-n-?) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-?'])
nnoremap <silent> <Plug>(coc-explorer-key-n-R) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-R'])
nnoremap <silent> <Plug>(coc-explorer-key-n-g.) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-g.'])
nnoremap <silent> <Plug>(coc-explorer-key-n-zh) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-zh'])
nnoremap <silent> <Plug>(coc-explorer-key-n-r) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-r'])
nnoremap <silent> <Plug>(coc-explorer-key-n-A) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-A'])
nnoremap <silent> <Plug>(coc-explorer-key-n-a) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-a'])
nnoremap <silent> <Plug>(coc-explorer-key-n-dF) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-dF'])
nnoremap <silent> <Plug>(coc-explorer-key-n-df) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-df'])
nnoremap <silent> <Plug>(coc-explorer-key-n-P) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-P'])
nnoremap <silent> <Plug>(coc-explorer-key-n-p) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-p'])
nnoremap <silent> <Plug>(coc-explorer-key-n-d[space]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-d[space]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-da) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-da'])
nnoremap <silent> <Plug>(coc-explorer-key-n-dt) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-dt'])
nnoremap <silent> <Plug>(coc-explorer-key-n-dd) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-dd'])
nnoremap <silent> <Plug>(coc-explorer-key-n-y[space]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-y[space]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-ya) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-ya'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yt) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-yt'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yy) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-yy'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yn) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-yn'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yp) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-yp'])
nnoremap <silent> <Plug>(coc-explorer-key-n-II) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-II'])
nnoremap <silent> <Plug>(coc-explorer-key-n-Ic) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-Ic'])
nnoremap <silent> <Plug>(coc-explorer-key-n-Il) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-Il'])
nnoremap <silent> <Plug>(coc-explorer-key-n-ic) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-ic'])
nnoremap <silent> <Plug>(coc-explorer-key-n-il) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-il'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gs) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-gs'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[bs]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[bs]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-t) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-t'])
nnoremap <silent> <Plug>(coc-explorer-key-n-E) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-E'])
nnoremap <silent> <Plug>(coc-explorer-key-n-s) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-s'])
nnoremap <silent> <Plug>(coc-explorer-key-n-e) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-e'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[cr]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-o) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-o'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[2-LeftMouse]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gh) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-gh'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gl) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-gl'])
nnoremap <silent> <Plug>(coc-explorer-key-n-K) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-K'])
nnoremap <silent> <Plug>(coc-explorer-key-n-J) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-J'])
nnoremap <silent> <Plug>(coc-explorer-key-n-l) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-l'])
nnoremap <silent> <Plug>(coc-explorer-key-n-h) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-h'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[tab]) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-[tab]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-*) :call coc#rpc#request('doKeymap', ['coc-explorer-key-n-*'])
vnoremap <silent> <Plug>(coc-translator-rv) :call coc#rpc#notify('doKeymap', ['coc-translator-rv'])
nnoremap <silent> <Plug>(coc-translator-r) :call coc#rpc#notify('doKeymap', ['coc-translator-r'])
vnoremap <silent> <Plug>(coc-translator-ev) :call coc#rpc#notify('doKeymap', ['coc-translator-ev'])
nnoremap <silent> <Plug>(coc-translator-e) :call coc#rpc#notify('doKeymap', ['coc-translator-e'])
vnoremap <silent> <Plug>(coc-translator-pv) :call coc#rpc#notify('doKeymap', ['coc-translator-pv'])
nnoremap <silent> <Plug>(coc-translator-p) :call coc#rpc#notify('doKeymap', ['coc-translator-p'])
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['coc-snippets-select'])
xnoremap <silent> <Plug>(coc-convert-snippet) :call coc#rpc#notify('doKeymap', ['coc-convert-snippet'])
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(ale_info_preview) :ALEInfo -preview
nnoremap <silent> <Plug>(ale_info_clipboard) :ALEInfo -clipboard
nnoremap <silent> <Plug>(ale_info_echo) :ALEInfo -echo
nnoremap <silent> <Plug>(ale_info) :ALEInfo
nnoremap <silent> <Plug>(ale_repeat_selection) :ALERepeatSelection
nnoremap <silent> <Plug>(ale_code_action) :ALECodeAction
nnoremap <silent> <Plug>(ale_filerename) :ALEFileRename
nnoremap <silent> <Plug>(ale_rename) :ALERename
nnoremap <silent> <Plug>(ale_import) :ALEImport
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_implementation_in_vsplit) :ALEGoToImplementation -vsplit
nnoremap <silent> <Plug>(ale_go_to_implementation_in_split) :ALEGoToImplementation -split
nnoremap <silent> <Plug>(ale_go_to_implementation_in_tab) :ALEGoToImplementation -tab
nnoremap <silent> <Plug>(ale_go_to_implementation) :ALEGoToImplementation
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinition -vsplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinition -split
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinition -vsplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinition -split
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
nnoremap <Plug>NERDCommenterAltDelims :call nerdcommenter#SwitchToAlternativeDelimiters(1)
xnoremap <silent> <Plug>NERDCommenterUncomment :call nerdcommenter#Comment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call nerdcommenter#Comment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call nerdcommenter#Comment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call nerdcommenter#Comment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call nerdcommenter#Comment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call nerdcommenter#Comment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call nerdcommenter#Comment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call nerdcommenter#Comment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call nerdcommenter#Comment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call nerdcommenter#Comment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call nerdcommenter#Comment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call nerdcommenter#Comment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call nerdcommenter#Comment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call nerdcommenter#Comment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call nerdcommenter#Comment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call nerdcommenter#Comment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call nerdcommenter#Comment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call nerdcommenter#Comment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call nerdcommenter#Comment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call nerdcommenter#Comment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call nerdcommenter#Comment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call nerdcommenter#Comment("n", "Comment")
nnoremap <silent> <Plug>(lsp-signature-help) :call lsp#ui#vim#signature_help#get_signature_help_under_cursor()
nnoremap <silent> <Plug>(lsp-previous-reference) :call lsp#internal#document_highlight#jump(-1)
nnoremap <silent> <Plug>(lsp-next-reference) :call lsp#internal#document_highlight#jump(+1)
nnoremap <silent> <Plug>(lsp-status) :echo lsp#get_server_status()
nnoremap <silent> <Plug>(lsp-peek-implementation) :call lsp#ui#vim#implementation(1)
nnoremap <silent> <Plug>(lsp-implementation) :call lsp#ui#vim#implementation(0)
xnoremap <silent> <Plug>(lsp-document-range-format) :<Home>silent <End>call lsp#internal#document_range_formatting#format({ 'bufnr': bufnr('%') })
nnoremap <silent> <Plug>(lsp-document-range-format) :set opfunc=lsp#internal#document_range_formatting#opfuncg@
vnoremap <silent> <Plug>(lsp-document-format) :<Home>silent <End>call lsp#internal#document_range_formatting#format({ 'bufnr': bufnr('%') })
nnoremap <silent> <Plug>(lsp-document-format) :call lsp#internal#document_formatting#format({ 'bufnr': bufnr('%') })
nnoremap <silent> <Plug>(lsp-workspace-symbol-search) :call lsp#internal#workspace_symbol#search#do({})
nnoremap <silent> <Plug>(lsp-workspace-symbol) :call lsp#ui#vim#workspace_symbol('')
nnoremap <silent> <Plug>(lsp-peek-type-definition) :call lsp#ui#vim#type_definition(1)
nnoremap <silent> <Plug>(lsp-type-hierarchy) :call lsp#internal#type_hierarchy#show()
nnoremap <silent> <Plug>(lsp-type-definition) :call lsp#ui#vim#type_definition(0)
nnoremap <silent> <Plug>(lsp-rename) :call lsp#ui#vim#rename()
nnoremap <silent> <Plug>(lsp-references) :call lsp#ui#vim#references({})
nnoremap <silent> <Plug>(lsp-previous-diagnostic-nowrap) :call lsp#internal#diagnostics#movement#_previous_diagnostics("-wrap=0")
nnoremap <silent> <Plug>(lsp-previous-diagnostic) :call lsp#internal#diagnostics#movement#_previous_diagnostics()
nnoremap <silent> <Plug>(lsp-next-diagnostic-nowrap) :call lsp#internal#diagnostics#movement#_next_diagnostics("-wrap=0")
nnoremap <silent> <Plug>(lsp-next-diagnostic) :call lsp#internal#diagnostics#movement#_next_diagnostics()
nnoremap <silent> <Plug>(lsp-previous-warning-nowrap) :call lsp#internal#diagnostics#movement#_previous_warning("-wrap=0")
nnoremap <silent> <Plug>(lsp-previous-warning) :call lsp#internal#diagnostics#movement#_previous_warning()
nnoremap <silent> <Plug>(lsp-next-warning-nowrap) :call lsp#internal#diagnostics#movement#_next_warning("-wrap=0")
nnoremap <silent> <Plug>(lsp-next-warning) :call lsp#internal#diagnostics#movement#_next_warning()
nnoremap <silent> <Plug>(lsp-previous-error-nowrap) :call lsp#internal#diagnostics#movement#_previous_error("-wrap=0")
nnoremap <silent> <Plug>(lsp-previous-error) :call lsp#internal#diagnostics#movement#_previous_error()
nnoremap <silent> <Plug>(lsp-next-error-nowrap) :call lsp#internal#diagnostics#movement#_next_error("-wrap=0")
nnoremap <silent> <Plug>(lsp-next-error) :call lsp#internal#diagnostics#movement#_next_error()
nnoremap <silent> <Plug>(lsp-preview-focus) :call lsp#ui#vim#output#focuspreview()
nnoremap <silent> <Plug>(lsp-preview-close) :call lsp#ui#vim#output#closepreview()
nnoremap <silent> <Plug>(lsp-hover-preview) :call lsp#internal#document_hover#under_cursor#do({ 'ui': 'preview' })
nnoremap <silent> <Plug>(lsp-hover-float) :call lsp#internal#document_hover#under_cursor#do({ 'ui': 'float' })
nnoremap <silent> <Plug>(lsp-hover) :call lsp#internal#document_hover#under_cursor#do({})
nnoremap <silent> <Plug>(lsp-document-diagnostics) :call lsp#internal#diagnostics#document_diagnostics_command#do({})
nnoremap <silent> <Plug>(lsp-document-symbol-search) :call lsp#internal#document_symbol#search#do({})
nnoremap <silent> <Plug>(lsp-document-symbol) :call lsp#ui#vim#document_symbol()
nnoremap <silent> <Plug>(lsp-peek-definition) :call lsp#ui#vim#definition(1)
nnoremap <silent> <Plug>(lsp-definition) :call lsp#ui#vim#definition(0)
nnoremap <silent> <Plug>(lsp-peek-declaration) :call lsp#ui#vim#declaration(1)
nnoremap <silent> <Plug>(lsp-declaration) :call lsp#ui#vim#declaration(0)
nnoremap <silent> <Plug>(lsp-code-lens) :call lsp#ui#vim#code_lens()
nnoremap <silent> <Plug>(lsp-code-action-preview) :call lsp#ui#vim#code_action({ 'ui': 'preview' })
nnoremap <silent> <Plug>(lsp-code-action-float) :call lsp#ui#vim#code_action({ 'ui': 'float' })
nnoremap <silent> <Plug>(lsp-code-action) :call lsp#ui#vim#code_action({})
nnoremap <silent> <Plug>(lsp-call-hierarchy-outgoing) :call lsp#ui#vim#call_hierarchy_outgoing()
nnoremap <silent> <Plug>(lsp-call-hierarchy-incoming) :call lsp#ui#vim#call_hierarchy_incoming({})
onoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Interface', 'Struct', 'Class'])
vnoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Interface', 'Struct', 'Class'])
vnoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Method', 'Function'])
onoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Method', 'Function'])
nnoremap <silent> <Plug>(coc-cursors-position) :call CocAction('cursorsSelect', bufnr('%'), 'position', 'n')
nnoremap <silent> <Plug>(coc-cursors-word) :call CocAction('cursorsSelect', bufnr('%'), 'word', 'n')
vnoremap <silent> <Plug>(coc-cursors-range) :call CocAction('cursorsSelect', bufnr('%'), 'range', visualmode())
nnoremap <silent> <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <silent> <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <silent> <Plug>(coc-float-jump) :call       coc#float#jump()
nnoremap <silent> <Plug>(coc-float-hide) :call       coc#float#close_all()
nnoremap <silent> <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <silent> <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <silent> <Plug>(coc-references-used) :call       CocActionAsync('jumpUsed')
nnoremap <silent> <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <silent> <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <silent> <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <silent> <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <silent> <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <silent> <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <silent> <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <silent> <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <silent> <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <silent> <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <silent> <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <silent> <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-source) :call       CocActionAsync('codeAction', '', ['source'], v:true)
nnoremap <Plug>(coc-codeaction-refactor) :call       CocActionAsync('codeAction', 'cursor', ['refactor'], v:true)
nnoremap <Plug>(coc-codeaction-cursor) :call       CocActionAsync('codeAction', 'cursor')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction', 'currline')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction', '')
vnoremap <Plug>(coc-codeaction-refactor-selected) :call       CocActionAsync('codeAction', visualmode(), ['refactor'], v:true)
vnoremap <silent> <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction', visualmode())
vnoremap <silent> <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected', visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
vnoremap <silent> <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
vnoremap <silent> <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
nnoremap <C-L> l
nnoremap <C-K> k
nnoremap <C-J> j
nnoremap <C-H> h
nnoremap <silent> <C-N> :NERDTreeToggle
nnoremap <M-q> :bd
nnoremap <M-k> :bn
nnoremap <M-j> :bp 
vmap <C-E> <Plug>(coc-snippets-select)
nnoremap <C-C> :CocCommand
imap  <Plug>(coc-snippets-expand-jump)
inoremap <silent> <expr> 	 coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\	" : coc#refresh()
imap  <Plug>(coc-snippets-expand)
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#confirm(): "\u\\=coc#on_enter()\"
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#next(1) : coc#inline#visible() ? coc#inline#next() : "\"
inoremap <silent> <expr>  coc#refresh()
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#prev(1) : coc#inline#visible() ? coc#inline#prev() : "\"
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#confirm() : coc#inline#visible() ? coc#inline#accept() :"\"
nnoremap ñ :bd
nnoremap ë :bn
nnoremap ê :bp 
inoremap jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hlsearch
set incsearch
set laststatus=2
set nomodeline
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/gruvbox,~/.vim/plugged/tokyonight-vim,~/.vim/plugged/nerdtree,~/.vim/plugged/vim-airline,~/.vim/plugged/vim-airline-themes,~/.vim/plugged/coc.nvim,~/.vim/plugged/vim-lsp,~/.vim/plugged/rainbow,~/.vim/plugged/nerdcommenter,~/.vim/plugged/auto-pairs,~/.vim/plugged/indentLine,~/.vim/plugged/tagbar,~/.vim/plugged/rust.vim,~/.vim/plugged/vim-racer,~/.vim/plugged/syntastic,~/.vim/plugged/bracey.vim,~/.vim/plugged/autosuggest.vim,~/.vim/plugged/vim-startify,~/.vim/plugged/ale,~/.vim/plugged/vim-solarized8,~/.vim/plugged/fzf,~/.vim/plugged/fzf.vim,~/.vim/plugged/vim-one,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim91,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/plugged/indentLine/after,~/.vim/plugged/rust.vim/after,~/.vim/after,~/.config/coc/extensions/node_modules/coc-snippets,~/.config/coc/extensions/node_modules/coc-explorer
set shortmess=filnxtToOSI
set showtabline=2
set splitbelow
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabline=%!airline#extensions#tabline#get()
set wildmenu
set wildoptions=pum
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/cs106l-assignments/assignment1
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +0 ~/.vimrc
argglobal
%argdel
$argadd ~/.vimrc
edit ~/.vimrc
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <M-n> :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> <M-p> AutoPairsToggle()
inoremap <buffer> <silent> <M-b> =AutoPairsBackInsert()
inoremap <buffer> <silent> <M-e> =AutoPairsFastWrap()
inoremap <buffer> <silent> <C-H> =AutoPairsDelete()
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> <M-'> =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> <M-"> =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> <M-}> =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> <M-{> =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> <M-]> =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> <M-[> =AutoPairsMoveCharacter('[')
inoremap <buffer> <silent> <M-)> =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> <M-(> =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> § =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> ¢ =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> © =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> ¨ =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
inoremap <buffer> <silent> ý =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> û =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> Ý =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> Û =AutoPairsMoveCharacter('[')
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('\%(^\s*".*\n\)\@<!\%(^\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('\%(^\s*".*\n\)\@<!\%(^\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|\(export\s\+\)\?def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|\(export\s\+\)\?def\)\>', "W")
noremap <buffer> <silent> <M-n> :call AutoPairsJump()
noremap <buffer> <silent> <M-p> :call AutoPairsToggle()
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:#\ -,mO:#\ \ ,eO:##,:#,sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=\\v^\\s*export\\s*(def|const|var|final)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=croql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\v^\\s*import\\s*(autoload)?
setlocal includeexpr=
setlocal indentexpr=vimindent.Expr()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=endif,=enddef,=endfu,=endfor,=endwh,=endtry,=endclass,=endinterface,=endenum,=},=else,=cat,=finall,=END,0\\,0=\"\\\ ,0=#\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 53 - ((35 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 53
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOSI
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
