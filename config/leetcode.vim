" :Lct - 给当前 LeetCode 解题文件补上 package/main，方便本地用 vimspector 调试
function! s:LeetComplete() abort
  let l:has_package = 0
  let l:has_main = 0

  for l:line in getline(1, '$')
    if l:line =~# '^\s*package\s\+\S\+'
      let l:has_package = 1
    endif
    if l:line =~# '^\s*func\s\+main\s*(\s*)'
      let l:has_main = 1
    endif
  endfor

  if l:has_package
    echom 'Lct: package 已存在，跳过'
  else
    call append(0, ['package main', ''])
    echom 'Lct: 已插入 package main'
  endif

  if l:has_main
    echom 'Lct: func main 已存在，跳过'
  else
    let l:last = line('$')
    call append(l:last, ['', 'func main() {', '', '}'])
    call cursor(l:last + 3, 1)
    echom 'Lct: 已插入 func main'
  endif
endfunction

command! Lct call s:LeetComplete()
