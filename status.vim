set statusline =
set statusline+=%< " truncate starts here
"set statusline+=%1*%f%* " filename with custom color
set statusline+=%f " filename
set statusline+= " "
set statusline+=%h " help buffer flag
set statusline+=%m " modified flag
set statusline+=%r " read only flag
set statusline+=%#warningmsg#%{SyntasticStatuslineFlag()}%* " syntax warnings
set statusline+=%=%-14.(%l,%c%V%)\ %P