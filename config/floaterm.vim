" ==========================================================
" ~/.vim/config/floaterm.vim
" vim-floaterm: 模拟 VS Code 终端体验
" ==========================================================

" 1. 外观与布局：固定在底部，高度占全屏 30%
let g:floaterm_wintype = 'split'
let g:floaterm_position = 'botright'
let g:floaterm_width = 1.0
let g:floaterm_height = 0.3
let g:floaterm_title = 'Terminal'

" 2. 核心开关：使用 Ctrl + ` (或 Ctrl + ~) 呼出/隐藏
let g:floaterm_keymap_toggle = '<C-`>'

" 兼容部分终端模拟器对 Ctrl + ~ 的识别
"nnoremap <silent> <C-`> :FloatermToggle<CR>
"tnoremap <silent> <C-`> <C-\><C-n>:FloatermToggle<CR>

" 3. 丝滑焦点跳转：完美契合你的 Ctrl + 方向键习惯
" 在终端模式下，直接按 Ctrl+Up 就能跳回上方的代码区，无需先按 Esc！
tnoremap <C-Left>  <C-\><C-n><C-w>h
tnoremap <C-Down>  <C-\><C-n><C-w>j
tnoremap <C-Up>    <C-\><C-n><C-w>k
tnoremap <C-Right> <C-\><C-n><C-w>l

" 4. 终端内部的退出优化：延续你的 jk 习惯
" 在终端里按 Esc 或 jk 会退回到终端的 Normal 模式，方便你滚动查看历史输出
tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>

" 5. 自动进入输入模式
" 只要鼠标焦点或快捷键跳入终端窗口，立刻切入 Insert 模式准备打字
autocmd User FloatermOpen startinsert
autocmd BufEnter * if &buftype == 'terminal' | startinsert | endif
" 6. 解决退出时的 Terminal 警告烦恼
" 当你输入 :qa 或 :q 时，自动先执行 :FloatermKill! 杀掉所有隐藏终端
	" ==========================================================
" 6. 智能退出拦截：完美解决 E947 报错与焦点逻辑
" ==========================================================

" function! SmartQuit(cmd)
"     " 情况 A：全局退出命令 (qa, wqa, qa!)
"     " 逻辑：无脑杀掉所有后台隐藏终端，并干净利落地退出整个 Vim
"     if a:cmd ==# 'qa' || a:cmd ==# 'wqa' || a:cmd ==# 'qa!' || a:cmd ==# 'wqa!'
"         execute 'FloatermKill!'
"         execute a:cmd
"         return
"     endif

"     " 情况 B：如果你光标在终端窗口里敲了 :q 或 :wq
"     " 逻辑：只关掉当前终端进程和窗口，保护外面的代码不被误关
"     if &buftype ==# 'terminal' || &filetype ==# 'floaterm'
"         if a:cmd ==# 'q' || a:cmd ==# 'wq' || a:cmd ==# 'q!'
"             execute 'FloatermKill'
"             return
"         endif
"     endif

"     " 情况 C：如果你在常规的代码窗口里敲了 :q 或 :wq
"     " 逻辑：通过计算剩下的常规窗口数量，判断这是否是最后一个窗口
"     let l:normal_wins = len(filter(range(1, winnr('$')), 'getbufvar(winbufnr(v:val), "&buftype") != "terminal" && getbufvar(winbufnr(v:val), "&filetype") != "floaterm"'))

"     if l:normal_wins <= 1 && tabpagenr('$') == 1
"         " 如果这是全屏最后一个代码窗口了，说明敲 :q 就是想退出 Vim
"         " 此时提前强杀所有后台终端，防止弹窗阻断退出！
"         execute 'FloatermKill!'
"     endif

"     " 执行你原本敲击的命令
"     execute a:cmd
" endfunction

" " 拦截你在底线命令模式输入的常用退出指令，交由智能函数处理
" cnoreabbrev <expr> q   getcmdtype() == ':' && getcmdline() == 'q'   ? 'call SmartQuit("q")'   : 'q'
" cnoreabbrev <expr> wq  getcmdtype() == ':' && getcmdline() == 'wq'  ? 'call SmartQuit("wq")'  : 'wq'
" cnoreabbrev <expr> qa  getcmdtype() == ':' && getcmdline() == 'qa'  ? 'call SmartQuit("qa")'  : 'qa'
" cnoreabbrev <expr> wqa getcmdtype() == ':' && getcmdline() == 'wqa' ? 'call SmartQuit("wqa")' : 'wqa'
" cnoreabbrev <expr> q!  getcmdtype() == ':' && getcmdline() == 'q!'  ? 'call SmartQuit("q!")'  : 'q!'
" cnoreabbrev <expr> qa! getcmdtype() == ':' && getcmdline() == 'qa!' ? 'call SmartQuit("qa!")' : 'qa!'
