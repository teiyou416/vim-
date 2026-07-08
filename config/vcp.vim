if exists('g:loaded_vcp')
  finish
endif
let g:loaded_vcp = 1

function! s:clipboard_target() abort
  if exists('g:vcp_clipboard_command')
    return [g:vcp_clipboard_command, get(g:, 'vcp_clipboard_name', 'custom clipboard')]
  endif

  if has('macunix') && executable('pbcopy')
    return ['pbcopy', 'pbcopy']
  endif

  if has('unix') && executable('wl-copy')
    return ['wl-copy', 'wl-copy']
  endif

  if has('clipboard')
    return ['', 'Vim clipboard register']
  endif

  return []
endfunction

function! s:parse_line_number(value) abort
  if type(a:value) != v:t_string || a:value !~# '^\d\+$'
    throw 'Vcp: line number must be a positive integer'
  endif

  return str2nr(a:value)
endfunction

function! s:normalize_range(start, end) abort
  let l:start = a:start
  let l:end = a:end

  if l:start > l:end
    let [l:start, l:end] = [l:end, l:start]
  endif

  if l:start < 1 || l:end > line('$')
    throw printf('Vcp: line range must be between 1 and %d', line('$'))
  endif

  return [l:start, l:end]
endfunction

function! s:copy_text(text) abort
  let l:target = s:clipboard_target()

  if empty(l:target)
    echoerr 'Vcp: no clipboard command found. On macOS install pbcopy; on Wayland Linux install wl-clipboard.'
    return 0
  endif

  if empty(l:target[0])
    call setreg('+', a:text)
  else
    call system(l:target[0], a:text)
    if v:shell_error != 0
      echoerr printf('Vcp: failed to copy with %s', l:target[1])
      return 0
    endif
  endif

  return 1
endfunction

function! s:vcp(line1, line2, args) abort
  try
    let l:args = split(a:args)

    if empty(l:args)
      let [l:start, l:end] = [a:line1, a:line2]
    elseif len(l:args) == 1
      let l:line = s:parse_line_number(l:args[0])
      let [l:start, l:end] = [l:line, l:line]
    elseif len(l:args) == 2
      let [l:start, l:end] = [s:parse_line_number(l:args[0]), s:parse_line_number(l:args[1])]
    else
      throw 'Vcp: usage is :Vcp [start [end]]'
    endif

    let [l:start, l:end] = s:normalize_range(l:start, l:end)
    let l:text = join(getline(l:start, l:end), "\n")

    if s:copy_text(l:text)
      echo printf('Vcp: copied lines %d-%d', l:start, l:end)
    endif
  catch /^Vcp:/
    echoerr v:exception
  endtry
endfunction

command! -bar -range=% -nargs=* Vcp call s:vcp(<line1>, <line2>, <q-args>)
