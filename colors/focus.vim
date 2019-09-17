" ==============================================================================
" Author: Aaron Klapatch
" ==============================================================================
" This config file is derived from the OceanicNext one at 
" https://github.com/mhartington/oceanic-next/blob/master/colors/OceanicNext.vim#L24

" Setup
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="focus"

" Italics
let g:visibility_terminal_italic = get(g:, 'visibility_terminal_italic', 0)
let s:italic = ""
if g:visibility_terminal_italic == 1
    let s:italic = "italic"
endif

" Bold
let g:visibility_terminal_bold = get(g:, 'visibility_terminal_bold',0)
let s:bold = ""
if g:visibility_terminal_bold == 1
    let s:bold = "bold"
endif

" Goals:
" * Not look terrible
" * be productive
"
" # Methods to accomplish those goals
" use italics and underline and bold settings to differentiate text
" Use colors that stimulate ideas or relaxation
"
" The human eye can see the most shades of green, so that might be a good base
" color 
"
" the internet seems to say that these colors are best for conecentration
" html color codes follow (the code that you get if you type in orange in
" inspect mode
" Orange: ffa600
" Blue:0000FF
" Green: 008000 light green: 90EE90
"
" Base colors for two decent schemes
" Green: 5fbb00
" Blue: 07738f 99cdff, 0a1857
" Grey: 989898
" Orange: f9732c
"
" The other scheme
" Green:679f16
" Blue:64acc5
" Orange:fe881e
" Dark Gray:555555
" Gray:8c8c8c
" White:e5e5e5
" 
" One More
" Blue:7ECCCB
" White:E5E4E0
" Orange:FF8800
" Green: 86B42F, D3EBA7
"
"
" Color decisions
" 2 oranges, lighter and darker, blue light and dark, white gray black, 3-4
" greens 
" They should be a fairly pure blues, greens and oranges
" after that use underline, bold and italics
"
" White: eeeeee
" Gray:999999
" Black: 111111
" Green: , pure 00ff00, dark turqoise 00bd81, light turqoise 00ffaa 
" Blue: dark: 000030  light 61b5ff lighter 64adc5
" Orange:ff9100/ pure orange
"
"
"
let s:base00=['#1c0200', '1'] " hex: done, a very dark red, backgroudn
let s:base01=['#ff0099', '13'] " highlighting text backgroudn, hex done
let s:base02=['#ff0099', '240'] " Comments 
let s:base03=['#7a0000', '243']
let s:base04=['#a7adba', '145']
let s:base05=['#c0c5ce', '251']
let s:base06=['#cdd3de', '252']
let s:base07=['#d8dee9', '253']
let s:base08=['#ec5f67', '203']
let s:base09=['#f99157', '209']
let s:base0A=['#fac863', '221']
let s:base0B=['#99c794', '114']
let s:base0C=['#62b3b2', '73']
let s:base0D=['#6699cc', '68']
let s:base0E=['#c594c5', '176']
let s:base0F=['#ab7967', '137']
let s:base10=['#ffffff', '15']
let s:none=['NONE', 'NONE']


" Highlight functions
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
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
let s:skyblue=['#64adc5','74'] " do not use

" }}}
" {{{ call <sid>:hi(group, fg, bg, gui, guisp)
call <sid>hi('Bold',                       '',       '',       'bold',      '')
call <sid>hi('Debug',                      s:base08, '',       '',          '')
call <sid>hi('Directory',                  s:lightblue, '',       '',          '')
call <sid>hi('ErrorMsg',                   s:black, s:orange, '',          '')
call <sid>hi('Exception',                  s:base08, '',       '',          '')
call <sid>hi('FoldColumn',                 s:base0D, s:base00, '',          '')
call <sid>hi('Folded',                     s:base03, s:base01, s:italic,    '')
call <sid>hi('IncSearch',                  s:base01, s:base09, 'NONE',      '')
call <sid>hi('Italic',                     '',       '',       s:italic,    '')

call <sid>hi('Macro',                      s:base08, '',       '',          '')
call <sid>hi('MatchParen',                 '', s:blue, '',          '')
call <sid>hi('ModeMsg',                    s:base0B, '',       '',          '')
call <sid>hi('MoreMsg',                    s:base0B, '',       '',          '')
call <sid>hi('Question',                   s:orange, '',       '',          '')
call <sid>hi('Search',                     s:black, s:skyblue, '',          '')
call <sid>hi('SpecialKey',                 s:base03, '',       '',          '')
call <sid>hi('TooLong',                    s:base08, '',       '',          '')
call <sid>hi('Underlined',                 s:base08, '',       '',          '')
call <sid>hi('Visual',                     s:black,       s:blue, '',          '')
call <sid>hi('VisualNOS',                  s:lightblue, s:gray,       '',          '')
call <sid>hi('WarningMsg',                 s:orange, s:black,       '',          '')
call <sid>hi('WildMenu',                   s:base10, s:base0D, '',          '')
call <sid>hi('Title',                      s:white, '',       'bold',          '')
call <sid>hi('Conceal',                    s:base0D, s:base00, '',          '')
call <sid>hi('Cursor',                     s:black, s:orange, '',          '')
call <sid>hi('NonText',                    s:black, s:gray,       '',          '')
call <sid>hi('Normal',                     s:orange, s:darkblue, '',          '')
call <sid>hi('EndOfBuffer',                s:lightturquoise, s:black, '',          '')
call <sid>hi('LineNr',                     s:green,  s:black, '',          '')
call <sid>hi('SignColumn',                 s:base00, s:base00, '',          '')
call <sid>hi('StatusLine',                 s:white, s:blue, '',          '')
call <sid>hi('StatusLineNC',               s:blue, s:white, '',          '')
call <sid>hi('VertSplit',                  s:black, s:green, '',          '')
call <sid>hi('ColorColumn',                '',       s:base01, '',          '')
call <sid>hi('CursorColumn',               '',       s:base01, '',          '')
call <sid>hi('CursorLine',                 s:black,       s:orange, 'NONE',      '')
call <sid>hi('CursorLineNR',               s:black, s:orange, '',          '')
call <sid>hi('CursorLineNr',               s:black, s:green, '',          '')
call <sid>hi('PMenu',                      s:black, s:skyblue, '',          '')
call <sid>hi('PMenuSel',                   s:skyblue, s:black, '',          '')
call <sid>hi('PmenuSbar',                  '',       s:gray, '',          '')
call <sid>hi('PmenuThumb',                 '',       s:black, '',          '')
call <sid>hi('TabLine',                    s:black, s:lightblue, '',          '')
call <sid>hi('TabLineFill',                '', s:lightblue, '',          '')
call <sid>hi('TabLineSel',                 s:lightblue,s:black, '',          '')
call <sid>hi('helpExample',                s:orange, '',       '',          '')
call <sid>hi('helpCommand',                s:orange, '',       '',          '')

" Standard syntax highlighting
call <sid>hi('Boolean',                    s:base09, '',       '',          '')
call <sid>hi('Character',                  s:base08, '',       '',          '')
call <sid>hi('Comment',                    s:darkturqoise, '',       s:italic,    '')
call <sid>hi('Conditional',                s:base0E, '',       '',          '')
call <sid>hi('Constant',                   s:base09, '',       '',          '')
call <sid>hi('Define',                     s:base0E, '',       '',          '')
call <sid>hi('Delimiter',                  s:lightblue, '',       'bold',          '')
call <sid>hi('Float',                      s:blue, '',       '',          '')
call <sid>hi('Function',                   s:lightblue, '',       '',          '')
call <sid>hi('Identifier',                 s:green, '',       'bold',          '')
call <sid>hi('Include',                    s:base0D, '',       '',          '')
call <sid>hi('Keyword',                    s:base0E, '',       '',          '')
call <sid>hi('Label',                      s:base0A, '',       '',          '')
call <sid>hi('Number',                     s:lightturquoise, '',       '',          '')
call <sid>hi('Operator',                   s:base05, '',       '',          '')
call <sid>hi('PreProc',                    s:gray, '',       'bold',          '')
call <sid>hi('Repeat',                     s:green, '',       '',          '')
call <sid>hi('Special',                    s:gray, '',       'underline',          '')
call <sid>hi('SpecialChar',                s:gray, '',       'underline',          '')
call <sid>hi('Statement',                  s:lightturquoise, '',       'undercurl',          '')
call <sid>hi('StorageClass',               s:gray, '',       '',          '')
call <sid>hi('String',                     s:white, '',       '',          '')
call <sid>hi('Structure',                  s:lightblue, '',       '',          '')
call <sid>hi('Tag',                        s:gray, '',       '',          '')
call <sid>hi('Todo',                       s:white, s:darkturqoise, '',          '')
call <sid>hi('Type',                       s:gray, '',       '',          '')
call <sid>hi('Typedef',                    s:green, '',       '',          '')

call <sid>hi('SpellBad',                   '',       '',       'undercurl', '')
call <sid>hi('SpellLocal',                 '',       '',       'undercurl', '')
call <sid>hi('SpellCap',                   '',       '',       'undercurl', '')
call <sid>hi('SpellRare',                  '',       '',       'undercurl', '')

call <sid>hi('csClass',                    s:base0A, '',       '',          '')
call <sid>hi('csAttribute',                s:base0A, '',       '',          '')
call <sid>hi('csModifier',                 s:base0E, '',       '',          '')
call <sid>hi('csType',                     s:base08, '',       '',          '')
call <sid>hi('csUnspecifiedStatement',     s:base0D, '',       '',          '')
call <sid>hi('csContextualStatement',      s:base0E, '',       '',          '')
call <sid>hi('csNewDecleration',           s:base08, '',       '',          '')
call <sid>hi('cOperator',                  s:base0C, '',       '',          '')
call <sid>hi('cPreCondit',                 s:base0E, '',       '',          '')

call <sid>hi('cssColor',                   s:base0C, '',       '',          '')
call <sid>hi('cssBraces',                  s:base05, '',       '',          '')
call <sid>hi('cssClassName',               s:base0E, '',       '',          '')


call <sid>hi('DiffAdd',                    s:base0B, s:base01, 'bold',      '')
call <sid>hi('DiffChange',                 s:base03, s:base01, '',          '')
call <sid>hi('DiffDelete',                 s:base08, s:base01, '',          '')
call <sid>hi('DiffText',                   s:base0D, s:base01, '',          '')
call <sid>hi('DiffAdded',                  s:base10, s:base0B, 'bold',      '')
call <sid>hi('DiffFile',                   s:base08, s:base00, '',          '')
call <sid>hi('DiffNewFile',                s:base0B, s:base00, '',          '')
call <sid>hi('DiffLine',                   s:base0D, s:base00, '',          '')
call <sid>hi('DiffRemoved',                s:base10, s:base08, 'bold',      '')

" call <sid>hi('Error',                      s:base08, s:none,   'undercurl',          '')
" call <sid>hi('NvimInternalError',          s:base08, s:none,   '',          '')
" call <sid>hi('NvimInternalError',          s:base08, s:none,   '',          '')
call <sid>hi('gitCommitOverflow',          s:base08, '',       '',          '')
call <sid>hi('gitCommitSummary',           s:base0B, '',       '',          '')

call <sid>hi('htmlBold',                   s:green, '',       s:bold,          '')
call <sid>hi('htmlItalic',                 s:lightblue, '',       s:italic,          '')
call <sid>hi('htmlTag',                    s:blue, '',       '',          '')
call <sid>hi('htmlEndTag',                 s:blue, '',       '',          '')
call <sid>hi('htmlArg',                    s:white, '',       '',          '')
call <sid>hi('htmlTagName',                s:gray, '',       'underline',          '')

call <sid>hi('javaScript',                 s:base05, '',       '',          '')
call <sid>hi('javaScriptNumber',           s:base09, '',       '',          '')
call <sid>hi('javaScriptBraces',           s:base05, '',       '',          '')

call <sid>hi('markdownCode',               s:darkturqoise, '',       '',          '')
call <sid>hi('markdownCodeBlock',          s:darkturqoise, '',       '',          '')
call <sid>hi('markdownHeadingDelimiter',   s:white, '',       '',          '')
call <sid>hi('markdownItalic',             s:lightblue, '',       s:italic,    '')
call <sid>hi('markdownBold',               s:green, '',       s:bold,      '')
call <sid>hi('markdownCodeDelimiter',      s:lightturquoise, '',       s:italic,    '')
call <sid>hi('markdownError',              s:base05, s:base00, '',          '')

call <sid>hi('NeomakeErrorSign',           s:base08, s:base00, '',          '')
call <sid>hi('NeomakeWarningSign',         s:base0A, s:base00, '',          '')
call <sid>hi('NeomakeInfoSign',            s:base10, s:base00, '',          '')
call <sid>hi('NeomakeError',               s:base08, '',       'undercurl', s:base08)
call <sid>hi('NeomakeWarning',             s:base08, '',       'undercurl', s:base08)

call <sid>hi('ALEErrorSign',               s:base08, s:base00, s:bold,      '')
call <sid>hi('ALEWarningSign',             s:base0A, s:base00, s:bold,      '')
call <sid>hi('ALEInfoSign',                s:orange, s:black, s:bold,      '')

call <sid>hi('NERDTreeExecFile',           s:base05, '',       '',          '')
call <sid>hi('NERDTreeDirSlash',           s:base0D, '',       '',          '')
call <sid>hi('NERDTreeOpenable',           s:green, '',       '',          '')
call <sid>hi('NERDTreeFile',               '',       s:none,   '',          '')
call <sid>hi('NERDTreeFlags',              s:base0D, '',       '',          '')

call <sid>hi('phpComparison',              s:base05, '',       '',          '')
call <sid>hi('phpParent',                  s:base05, '',       '',          '')
call <sid>hi('phpMemberSelector',          s:base05, '',       '',          '')

call <sid>hi('pythonRepeat',               s:base0E, '',       '',          '')
call <sid>hi('pythonOperator',             s:base0E, '',       '',          '')

call <sid>hi('rubyConstant',               s:base0A, '',       '',          '')
call <sid>hi('rubySymbol',                 s:base0B, '',       '',          '')
call <sid>hi('rubyAttribute',              s:base0D, '',       '',          '')
call <sid>hi('rubyInterpolation',          s:base0B, '',       '',          '')
call <sid>hi('rubyInterpolationDelimiter', s:base0F, '',       '',          '')
call <sid>hi('rubyStringDelimiter',        s:base0B, '',       '',          '')
call <sid>hi('rubyRegexp',                 s:base0C, '',       '',          '')

call <sid>hi('sassidChar',                 s:base08, '',       '',          '')
call <sid>hi('sassClassChar',              s:base09, '',       '',          '')
call <sid>hi('sassInclude',                s:base0E, '',       '',          '')
call <sid>hi('sassMixing',                 s:base0E, '',       '',          '')
call <sid>hi('sassMixinName',              s:base0D, '',       '',          '')

call <sid>hi('vimfilerLeaf',               s:base05, '',       '',          '')
call <sid>hi('vimfilerNormalFile',         s:base05, s:base00, '',          '')
call <sid>hi('vimfilerOpenedFile',         s:base0D, '',       '',          '')
call <sid>hi('vimfilerClosedFile',         s:base0D, '',       '',          '')

call <sid>hi('GitGutterAdd',               s:base0B, s:base00, s:bold,      '')
call <sid>hi('GitGutterChange',            s:base0D, s:base00, s:bold,      '')
call <sid>hi('GitGutterDelete',            s:base08, s:base00, s:bold,      '')
call <sid>hi('GitGutterChangeDelete',      s:base0E, s:base00, s:bold,      '')

call <sid>hi('SignifySignAdd',             s:base0B, s:base00, s:bold,      '')
call <sid>hi('SignifySignChange',          s:base0D, s:base00, s:bold,      '')
call <sid>hi('SignifySignDelete',          s:base08, s:base00, s:bold,      '')
call <sid>hi('SignifySignChangeDelete',    s:base0E, s:base00, s:bold,      '')
call <sid>hi('SignifySignDeleteFirstLine', s:base08, s:base00, s:bold,      '')

call <sid>hi('xmlTag',                     s:lightturquoise, '',       '',          '')
call <sid>hi('xmlTagName',                 s:gray, '',       '',          '')
call <sid>hi('xmlEndTag',                  s:lightturquoise, '',       '',          '')


" }}}

let g:terminal_color_0=s:black[0]
let g:terminal_color_8=s:black[0]

let g:terminal_color_1=s:orange[0]
let g:terminal_color_9=s:orange[0]

let g:terminal_color_2=s:base0B[0]
let g:terminal_color_10=s:base0B[0]

let g:terminal_color_3=s:base0A[0]
let g:terminal_color_11=s:base0A[0]

let g:terminal_color_4=s:base0D[0]
let g:terminal_color_12=s:base0D[0]

let g:terminal_color_5=s:base0E[0]
let g:terminal_color_13=s:base0E[0]

let g:terminal_color_6=s:base0C[0]
let g:terminal_color_14=s:base0C[0]

let g:terminal_color_7=s:base05[0]
let g:terminal_color_15=s:base05[0]

let g:terminal_color_background=s:black[0]
let g:terminal_color_foreground=s:green[0]
