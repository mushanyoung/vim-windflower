" windflower: terminal vim color scheme derived from railscasts
" Compatible with vim 8+ and neovim, supports both terminal and GUI colors

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "windflower"

" Enable true color support when available
if has('termguicolors') && &termguicolors
  let s:tc = 1
else
  let s:tc = 0
endif

" Color definitions - mapping cterm numbers to hex values
" This allows the colorscheme to work in both terminal and GUI environments

" General
if s:tc
  hi Normal                    guifg=#e4e4e4 guibg=#1c1c1c ctermfg=254 ctermbg=234
  hi Search                    guifg=#000000 guibg=#5f5f87 ctermfg=000 ctermbg=060
  hi Visual                    guibg=#5f5f87 ctermbg=060
  hi LineNr                    guifg=#6c6c6c ctermfg=242
  hi Cursor                    guifg=#000000 guibg=#ffffff ctermfg=000 ctermbg=015
  hi CursorLine                guibg=#262626 ctermbg=235 cterm=none gui=none
  hi CursorLineNr              guifg=#a8a8a8 ctermfg=248
  hi VertSplit                 guifg=#444444 guibg=#444444 ctermfg=238 ctermbg=238
  hi SignColumn                guifg=#ffffff guibg=#1c1c1c ctermfg=015 ctermbg=234
  hi FoldColumn                guifg=#ffffff ctermfg=015
  hi ColorColumn               guibg=#262626 ctermbg=235
  hi CursorColumn              guibg=#262626 ctermbg=235
  hi Folded                    guifg=#ffffff guibg=#444444 ctermfg=015 ctermbg=238
  hi NonText                   guifg=#767676 ctermfg=243
  hi SpecialKey                guifg=#767676 ctermfg=243
  hi Special                   guifg=#00875f ctermfg=029
  hi Directory                 guifg=#008787 ctermfg=030
else
  hi Normal                    ctermfg=254 ctermbg=234
  hi Search                    ctermfg=000 ctermbg=060
  hi Visual                    ctermbg=060
  hi LineNr                    ctermfg=242
  hi Cursor                    ctermfg=000 ctermbg=015
  hi CursorLine                ctermbg=235 cterm=none
  hi CursorLineNr              ctermfg=248
  hi VertSplit                 ctermfg=238 ctermbg=238
  hi SignColumn                ctermfg=015 ctermbg=234
  hi FoldColumn                ctermfg=015
  hi ColorColumn               ctermbg=235
  hi CursorColumn              ctermbg=235
  hi Folded                    ctermfg=015 ctermbg=238
  hi NonText                   ctermfg=243
  hi SpecialKey                ctermfg=243
  hi Special                   ctermfg=029
  hi Directory                 ctermfg=030
endif

" Popup Menu
if s:tc
  hi Pmenu                     guifg=#ffffff guibg=#444444 ctermfg=015 ctermbg=238
  hi PmenuSel                  guifg=#000000 guibg=#87af5f ctermfg=000 ctermbg=107
  hi PMenuSbar                 guifg=#ffffff guibg=#5f5f87 ctermfg=015 ctermbg=060
  hi PMenuThumb                guifg=#ffffff guibg=#a8a8a8 ctermfg=015 ctermbg=248
else
  hi Pmenu                     ctermfg=015 ctermbg=238
  hi PmenuSel                  ctermfg=000 ctermbg=107
  hi PMenuSbar                 ctermfg=015 ctermbg=060
  hi PMenuThumb                ctermfg=015 ctermbg=248
endif

" Status Line
if s:tc
  hi User1                     guifg=#eeeeee guibg=#626262 ctermfg=255 ctermbg=241
  hi User2                     guifg=#ffaf00 guibg=#626262 ctermfg=214 ctermbg=241
  hi User3                     guifg=#5fff00 guibg=#626262 ctermfg=082 ctermbg=241
  hi User4                     guifg=#870000 guibg=#626262 ctermfg=088 ctermbg=241
  hi User5                     guifg=#e4e4e4 guibg=#626262 ctermfg=254 ctermbg=241
  hi User6                     guifg=#e4e4e4 guibg=#626262 ctermfg=254 ctermbg=241
  hi StatusLine                guifg=#e4e4e4 guibg=#626262 ctermfg=254 ctermbg=241
  hi StatusLineNC              guifg=#585858 guibg=#303030 ctermfg=240 ctermbg=236
else
  hi User1                     ctermfg=255 ctermbg=241
  hi User2                     ctermfg=214 ctermbg=241
  hi User3                     ctermfg=082 ctermbg=241
  hi User4                     ctermfg=088 ctermbg=241
  hi User5                     ctermfg=254 ctermbg=241
  hi User6                     ctermfg=254 ctermbg=241
  hi StatusLine                ctermfg=254 ctermbg=241
  hi StatusLineNC              ctermfg=240 ctermbg=236
endif

" Code constructs
if s:tc
  hi Comment                   guifg=#af875f ctermfg=137
  hi Todo                      guifg=#d75f00 guibg=#303030 ctermfg=166 ctermbg=236
  hi Error                     guifg=#ffd700 guibg=#870000 ctermfg=220 ctermbg=088
  hi Exception                 guifg=#870000 ctermfg=088
  hi WarningMsg                guifg=#800000 ctermfg=001
  
  hi Statement                 guifg=#af5f00 ctermfg=130
  hi Keyword                   guifg=#af5f00 ctermfg=130
  hi StorageClass              guifg=#af5f00 ctermfg=130
  hi Constant                  guifg=#af5f00 ctermfg=130
  hi Structure                 guifg=#af5f00 ctermfg=130
  
  hi Type                      guifg=#d75f5f ctermfg=167
  hi Typedef                   guifg=#d75f5f ctermfg=167
  
  hi PreProc                   guifg=#ff8700 ctermfg=208
  hi Macro                     guifg=#ff8700 ctermfg=208
  
  hi Identifier                guifg=#87afaf ctermfg=109
  hi Boolean                   guifg=#87afd7 ctermfg=110
  hi Number                    guifg=#87afd7 ctermfg=110
  hi String                    guifg=#87af5f ctermfg=107
  
  hi Function                  guifg=#ffd75f ctermfg=221
  
  hi Operator                  guifg=#9e9e9e ctermfg=247
  hi Delimiter                 guifg=#9e9e9e ctermfg=247
  hi Title                     guifg=#d78700 ctermfg=172
else
  hi Comment                   ctermfg=137
  hi Todo                      ctermfg=166 ctermbg=236
  hi Error                     ctermfg=220 ctermbg=088
  hi Exception                 ctermfg=088
  hi WarningMsg                ctermfg=001
  
  hi Statement                 ctermfg=130
  hi Keyword                   ctermfg=130
  hi StorageClass              ctermfg=130
  hi Constant                  ctermfg=130
  hi Structure                 ctermfg=130
  
  hi Type                      ctermfg=167
  hi Typedef                   ctermfg=167
  
  hi PreProc                   ctermfg=208
  hi Macro                     ctermfg=208
  
  hi Identifier                ctermfg=109
  hi Boolean                   ctermfg=110
  hi Number                    ctermfg=110
  hi String                    ctermfg=107
  
  hi Function                  ctermfg=221
  
  hi Operator                  ctermfg=247
  hi Delimiter                 ctermfg=247
  hi Title                     ctermfg=172
endif

" Diffs
if s:tc
  hi DiffAdd                   guifg=#008000 guibg=#005f00 ctermfg=002 ctermbg=022
  hi DiffDelete                guifg=#800000 guibg=#5f0000 ctermfg=001 ctermbg=052 cterm=underline gui=underline
  hi DiffChange                guifg=#000080 guibg=#00005f ctermfg=004 ctermbg=017
  hi DiffText                  guifg=#ffffff guibg=#ff0000 ctermfg=015 ctermbg=009 cterm=underline gui=underline
  
  hi diffAdded                 guifg=#008000 guibg=#005f00 ctermfg=002 ctermbg=022
  hi diffRemoved               guifg=#800000 guibg=#5f0000 ctermfg=001 ctermbg=052 cterm=underline gui=underline
  hi diffNewFile               guifg=#ffffff guibg=#ff0000 ctermfg=015 ctermbg=009 cterm=underline gui=underline
  hi diffFile                  guifg=#ffffff guibg=#ff0000 ctermfg=015 ctermbg=009 cterm=underline gui=underline
else
  hi DiffAdd                   ctermfg=002 ctermbg=022
  hi DiffDelete                ctermfg=001 ctermbg=052 cterm=underline
  hi DiffChange                ctermfg=004 ctermbg=017
  hi DiffText                  ctermfg=015 ctermbg=009 cterm=underline
  
  hi diffAdded                 ctermfg=002 ctermbg=022
  hi diffRemoved               ctermfg=001 ctermbg=052 cterm=underline
  hi diffNewFile               ctermfg=015 ctermbg=009 cterm=underline
  hi diffFile                  ctermfg=015 ctermbg=009 cterm=underline
endif

" Mail
if s:tc
  hi mailEmail                 guifg=#87af5f ctermfg=107 cterm=underline gui=underline
  hi mailHeaderKey             guifg=#ffd75f ctermfg=221
  hi mailSubject               guifg=#ffd75f ctermfg=221
else
  hi mailEmail                 ctermfg=107 cterm=underline
  hi mailHeaderKey             ctermfg=221
  hi mailSubject               ctermfg=221
endif

" Spell
if s:tc
  hi SpellBad                  guifg=#d70000 guibg=NONE ctermfg=160 ctermbg=none cterm=underline gui=underline
  hi SpellRare                 guifg=#d75f87 ctermfg=168 cterm=underline gui=underline
  hi SpellCap                  guifg=#d7d7ff ctermfg=189 cterm=underline gui=underline
  hi SpellLocal                guifg=#00ffff ctermfg=051 cterm=underline gui=underline
  hi MatchParen                guifg=#ffffff guibg=#005f5f ctermfg=015 ctermbg=023
else
  hi SpellBad                  ctermfg=160 ctermbg=none cterm=underline
  hi SpellRare                 ctermfg=168 cterm=underline
  hi SpellCap                  ctermfg=189 cterm=underline
  hi SpellLocal                ctermfg=051 cterm=underline
  hi MatchParen                ctermfg=015 ctermbg=023
endif

" XML & HTML
if s:tc
  hi xmlTag                    guifg=#d7af5f ctermfg=179
  hi xmlTagName                guifg=#d7af5f ctermfg=179
  hi xmlEndTag                 guifg=#d7af5f ctermfg=179
  hi htmlTag                   guifg=#d7af5f ctermfg=179
  hi htmlTagName               guifg=#d7af5f ctermfg=179
  hi htmlEndTag                guifg=#d7af5f ctermfg=179
else
  hi xmlTag                    ctermfg=179
  hi xmlTagName                ctermfg=179
  hi xmlEndTag                 ctermfg=179
  hi htmlTag                   ctermfg=179
  hi htmlTagName               ctermfg=179
  hi htmlEndTag                ctermfg=179
endif

if s:tc
  hi checkbox                  guifg=#3a3a3a ctermfg=237
  hi checkboxDone              guifg=#5fff00 ctermfg=082 cterm=underline gui=underline
  hi checkboxNotDone           guifg=#005fd7 ctermfg=026 cterm=underline gui=underline
else
  hi checkbox                  ctermfg=237
  hi checkboxDone              ctermfg=082 cterm=underline
  hi checkboxNotDone           ctermfg=026 cterm=underline
endif

" C & CPP
if s:tc
  hi cppAccess                 guifg=#ff5f00 ctermfg=202
  hi cppStatement              guifg=#af5f5f ctermfg=131
  
  hi cCustomClass              guifg=#5f8700 ctermfg=064
  hi cCustomOperator           guifg=#9e9e9e ctermfg=247
  hi cCustomFunc               guifg=#ffaf00 ctermfg=214
  hi cCustomTemplateClass      guifg=#00afd7 ctermfg=038
  hi cCustomTemplateFunc       guifg=#00afd7 ctermfg=038
  hi cCustomTemplate           guifg=#00afd7 ctermfg=038
  hi cTemplateDeclare          guifg=#00afd7 ctermfg=038
  hi cTemplateOperatorDeclare  guifg=#00afd7 ctermfg=038
  
  hi cppSTLnamespace           guifg=#5f8700 ctermfg=064
  hi cppSTLbool                guifg=#8787ff ctermfg=105
  hi cppSTLconstant            guifg=#8787ff ctermfg=105
  hi cppSTLexception           guifg=#8787ff ctermfg=105
else
  hi cppAccess                 ctermfg=202
  hi cppStatement              ctermfg=131
  
  hi cCustomClass              ctermfg=064
  hi cCustomOperator           ctermfg=247
  hi cCustomFunc               ctermfg=214
  hi cCustomTemplateClass      ctermfg=038
  hi cCustomTemplateFunc       ctermfg=038
  hi cCustomTemplate           ctermfg=038
  hi cTemplateDeclare          ctermfg=038
  hi cTemplateOperatorDeclare  ctermfg=038
  
  hi cppSTLnamespace           ctermfg=064
  hi cppSTLbool                ctermfg=105
  hi cppSTLconstant            ctermfg=105
  hi cppSTLexception           ctermfg=105
endif

" Ruby
if s:tc
  hi rubyTodo                  guifg=#d75f5f ctermfg=167
  hi rubyClass                 guifg=#ffffff ctermfg=015
  hi rubyConstant              guifg=#d75f5f ctermfg=167
  hi rubyInterpolation         guifg=#ffffff ctermfg=015
  hi rubyBlockParameter        guifg=#d7d7ff ctermfg=189
  hi rubyPseudoVariable        guifg=#ffd75f ctermfg=221
  hi rubyStringDelimiter       guifg=#87af5f ctermfg=107
  hi rubyInstanceVariable      guifg=#d7d7ff ctermfg=189
  hi rubyPredefinedConstant    guifg=#d75f5f ctermfg=167
  hi rubyLocalVariableOrMethod guifg=#d7d7ff ctermfg=189
else
  hi rubyTodo                  ctermfg=167
  hi rubyClass                 ctermfg=015
  hi rubyConstant              ctermfg=167
  hi rubyInterpolation         ctermfg=015
  hi rubyBlockParameter        ctermfg=189
  hi rubyPseudoVariable        ctermfg=221
  hi rubyStringDelimiter       ctermfg=107
  hi rubyInstanceVariable      ctermfg=189
  hi rubyPredefinedConstant    ctermfg=167
  hi rubyLocalVariableOrMethod ctermfg=189
endif

" Python
if s:tc
  hi pythonExceptions          guifg=#ffaf87 ctermfg=216
  hi pythonDoctest             guifg=#8787ff ctermfg=105
  hi pythonDoctestValue        guifg=#87d7af ctermfg=115
else
  hi pythonExceptions          ctermfg=216
  hi pythonDoctest             ctermfg=105
  hi pythonDoctestValue        ctermfg=115
endif

" Indent for nathanaelkane/vim-indent-guides
if s:tc
  hi IndentGuidesOdd           guibg=#303030 ctermbg=236
  hi IndentGuidesEven          guibg=#444444 ctermbg=238
else
  hi IndentGuidesOdd           ctermbg=236
  hi IndentGuidesEven          ctermbg=238
endif
