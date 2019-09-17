
let s:orange=['#ff9100','208']
let s:white=['#ffffff', '255']
let s:gray=['#aaaaaa','245']
let s:black=['#292929','233']
let s:green=['#9cff96','40']
let s:lightturquoise=['#00ffaa','49']
let s:darkturqoise=['#00bd81','36']
let s:blue=['#0088ff','17']
let s:darkblue=['#2b2c3d', '17']
let s:lightblue=['#61b5ff','75']
let s:skyblue=['#64adc5','74']

" [s:darkblue[0], s:orange[0], s:darkblue[1], s:orange[1]]
 " [s:darkblue[0], s:lightturquoise[0], s:darkblue[1], s:lightturquoise[1]]
 "
let s:normal1   = [s:darkblue[0], s:lightturquoise[0], s:darkblue[1], s:lightturquoise[1]]
let s:normal2   = [s:black[0], s:green[0], s:black[1], s:green[1]]
let s:normal3 = [s:darkblue[0], s:darkturqoise[0], s:darkblue[1], s:darkturqoise[1]]
let s:inactive1 = [s:orange[0], s:darkblue[0], s:orange[1], s:darkblue[1]]
let s:inactive2 = [s:black[0], s:green[0], s:black[1], s:green[1]]
let s:inactive3 = [s:lightblue[0], s:black[0], s:lightblue[1], s:black[1]]
let s:insert1   = [s:darkblue[0], s:orange[0], s:darkblue[1], s:orange[1]]
let s:insert2   = s:normal2
let s:insert3   = s:normal3
let s:replace1  = [s:black[0], s:lightblue[0], s:black[1], s:lightblue[1]]
let s:replace2  = s:normal2
let s:replace3  = s:normal3 
let s:visual1   = [s:darkblue[0], s:white[0], s:darkblue[1], s:white[1]]
let s:visual2   = s:normal2
let s:visual3   = s:normal3 
let s:ctrlp1    = [s:darkblue[0], s:orange[0], s:darkblue[1], s:orange[1]]
let s:ctrlp2    = s:normal2
let s:ctrlp3    = s:normal3 
let s:warning   = [s:white[0], s:orange[0], s:white[1], s:orange[1]]
let s:error     = [s:black[0], s:orange[0], s:black[1], s:orange[1]]

let g:airline#themes#focus#palette = {}
let g:airline#themes#focus#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
let g:airline#themes#focus#palette.normal.airline_warning = s:warning
let g:airline#themes#focus#palette.normal.airline_error = s:error
let g:airline#themes#focus#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
let g:airline#themes#focus#palette.insert.airline_warning = s:warning
let g:airline#themes#focus#palette.insert.airline_error = s:error
let g:airline#themes#focus#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
let g:airline#themes#focus#palette.replace.airline_warning = s:warning
let g:airline#themes#focus#palette.replace.airline_error = s:error
let g:airline#themes#focus#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
let g:airline#themes#focus#palette.visual.airline_warning = s:warning
let g:airline#themes#focus#palette.visual.airline_error = s:error
let g:airline#themes#focus#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
let g:airline#themes#focus#palette.inactive.airline_warning = s:warning
let g:airline#themes#focus#palette.inactive.airline_error = s:error


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#focus#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:ctrlp1, s:ctrlp2, s:ctrlp3)
