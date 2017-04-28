" windflower: ravy terminal vim color scheme derived from railscasts

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "windflower"

" General
hi Normal                    ctermfg=254 ctermbg=234
hi Search                    ctermfg=000 ctermbg=060
hi Visual                    ctermbg=060
hi LineNr                    ctermfg=242
hi Cursor                    ctermfg=000 ctermbg=015
hi CursorLine                ctermbg=234 cterm=none
hi CursorLineNr              ctermfg=248
hi VertSplit                 ctermfg=238 ctermbg=233
hi SignColumn                ctermfg=015
hi ColorColumn               ctermbg=234
hi! link CursorColumn ColorColumn

" StatusLine
hi User1                     ctermfg=255 ctermbg=241
hi User2                     ctermfg=214 ctermbg=241
hi User3                     ctermfg=082 ctermbg=241
hi User4                     ctermfg=088 ctermbg=241
hi User5                     ctermfg=254 ctermbg=241
hi User6                     ctermfg=254 ctermbg=241
hi User7                     ctermfg=254 ctermbg=241
hi User8                     ctermfg=254 ctermbg=241
hi User9                     ctermfg=254 ctermbg=241
hi StatusLine                ctermfg=254 ctermbg=241
hi StatusLineNC              ctermfg=240 ctermbg=236

" Folds
hi Folded                    ctermfg=015 ctermbg=238
hi! link FoldColumn SignColumn

" Invisible Characters
hi NonText                   ctermfg=243
hi SpecialKey                ctermfg=243

" Misc
hi Directory                 ctermfg=030

" Popup Menu
hi Pmenu                     ctermfg=015 ctermbg=238
hi PmenuSel                  ctermfg=000 ctermbg=107
hi PMenuSbar                 ctermfg=015 ctermbg=060
hi PMenuThumb                ctermfg=015 ctermbg=248

" Code constructs
hi Comment                   ctermfg=137
hi Todo                      ctermfg=167 cterm=underline
hi Error                     ctermfg=220 ctermbg=088
hi WarningMsg                ctermfg=001

hi Keyword                   ctermfg=130
hi Statement                 ctermfg=130

hi Type                      ctermfg=167
hi Typedef                   ctermfg=202
hi Constant                  ctermfg=208
hi PreProc                   ctermfg=208
hi Macro                     ctermfg=202
hi StorageClass              ctermfg=208

hi Identifier                ctermfg=109
hi Boolean                   ctermfg=110
hi Number                    ctermfg=110
hi String                    ctermfg=107

hi Function                  ctermfg=221

hi Operator                  ctermfg=247
hi Delimiter                 ctermfg=247
hi Title                     ctermfg=172
hi Exception                 ctermfg=088
hi Special                   ctermfg=022

" Diffs
hi DiffAdd                   ctermfg=254 ctermbg=022
hi DiffDelete                ctermfg=016 ctermbg=052 cterm=underline
hi DiffChange                ctermfg=015 ctermbg=090
hi DiffText                  ctermfg=015 ctermbg=009 cterm=underline

hi diffAdded                 ctermfg=028
hi diffRemoved               ctermfg=001
hi diffNewFile               ctermfg=015 cterm=underline
hi diffFile                  ctermfg=015 cterm=underline

" Ruby
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

" Python
hi pythonExceptions          ctermfg=216
hi pythonDoctest             ctermfg=105
hi pythonDoctestValue        ctermfg=115

" Mail
hi mailEmail                 ctermfg=107 cterm=underline
hi mailHeaderKey             ctermfg=221
hi! link mailSubject mailHeaderKey

" Spell
hi SpellBad                  ctermfg=160 cterm=underline
hi SpellRare                 ctermfg=168 cterm=underline
hi SpellCap                  ctermfg=189 cterm=underline
hi SpellLocal                ctermfg=051 cterm=underline
hi MatchParen                ctermfg=015 ctermbg=023

" XML & HTML
hi xmlTag                    ctermfg=179
hi xmlTagName                ctermfg=179
hi xmlEndTag                 ctermfg=179
hi! link htmlTag             xmlTag
hi! link htmlTagName         xmlTagName
hi! link htmlEndTag          xmlEndTag

hi checkbox                  ctermfg=237
hi checkboxDone              ctermfg=082 cterm=underline
hi checkboxNotDone           ctermfg=026 cterm=underline
