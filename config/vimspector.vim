" vimspector config
" 不用官方的 HUMAN/VISUAL_STUDIO 预设（会把 <F5> 抢去做 Continue，
" 跟 vimrc 里 <F5> = :ALEToggle 冲突），改用 <leader>v 前缀手动绑定。
let g:vimspector_enable_mappings = 'NONE'

nmap <leader>vc <Plug>VimspectorContinue
nmap <leader>vr <Plug>VimspectorRestart
nmap <leader>vp <Plug>VimspectorPause
nmap <leader>vx <Plug>VimspectorStop

nmap <leader>vb <Plug>VimspectorToggleBreakpoint
nmap <leader>vB <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader>vf <Plug>VimspectorAddFunctionBreakpoint

nmap <leader>vo <Plug>VimspectorStepOver
nmap <leader>vi <Plug>VimspectorStepInto
nmap <leader>vO <Plug>VimspectorStepOut
nmap <leader>vu <Plug>VimspectorRunToCursor
