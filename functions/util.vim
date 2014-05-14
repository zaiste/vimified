function! g:Check_defined(variable, default)
  if !exists(a:variable)
    let {a:variable} = a:default
  endif
endfunction