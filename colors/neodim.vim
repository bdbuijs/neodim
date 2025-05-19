highlight clear

if exists("syntax_on")
  syntax reset
endif

exec "source " . expand('<sfile>:p:h') . "/default-light.vim"

let colors_name = "neodim"

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=3
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

" Dim line numbers, comments, color columns, the status line, splits and sign
" columns.
if &background == "light"
  highlight LineNr       ctermfg=7
  highlight CursorLineNr ctermfg=8
  highlight Comment      ctermfg=7
  highlight ColorColumn  ctermfg=8    ctermbg=7
  highlight Folded       ctermfg=8    ctermbg=7
  highlight FoldColumn   ctermfg=8    ctermbg=7
  highlight Pmenu        ctermfg=0    ctermbg=7
  highlight PmenuSel     ctermfg=7    ctermbg=0
  highlight SpellCap     ctermfg=8    ctermbg=7
  highlight StatusLine   ctermfg=0    ctermbg=7    cterm=bold
  highlight StatusLineNC ctermfg=8    ctermbg=7    cterm=NONE
  highlight VertSplit    ctermfg=8    ctermbg=7    cterm=NONE
  highlight SignColumn                ctermbg=7
else
  highlight LineNr       ctermfg=8
  highlight CursorLineNr ctermfg=7
  highlight Comment      ctermfg=8
  highlight ColorColumn  ctermfg=7    ctermbg=8
  highlight Folded       ctermfg=7    ctermbg=8
  highlight FoldColumn   ctermfg=7    ctermbg=8
  highlight Pmenu        ctermfg=15   ctermbg=8
  highlight PmenuSel     ctermfg=8    ctermbg=15
  highlight SpellCap     ctermfg=7    ctermbg=8
  highlight StatusLine   ctermfg=15   ctermbg=8    cterm=bold
  highlight StatusLineNC ctermfg=7    ctermbg=8    cterm=NONE
  highlight VertSplit    ctermfg=7    ctermbg=8    cterm=NONE
  highlight SignColumn                ctermbg=8
endif

highlight link DimFzfFg     Normal
highlight link DimFzfBg     Normal
highlight link DimFzfFgPlus PmenuSel
highlight link DimFzfBgPlus PmenuSel
highlight link DimFzfInfo   Comment

highlight DimFzfHl      ctermfg=2
highlight DimFzfPrompt  ctermfg=12
highlight DimFzfPointer ctermfg=1
highlight DimFzfMarker  ctermfg=9

let g:fzf_colors = { 'fg':      ['fg', 'DimFzfFg'],
                   \ 'bg':      ['bg', 'DimFzfBg'],
                   \ 'hl':      ['fg', 'DimFzfHl'],
                   \ 'fg+':     ['fg', 'DimFzfFgPlus'],
                   \ 'bg+':     ['bg', 'DimFzfbgPlus'],
                   \ 'hl+':     ['fg', 'DimFzfHl'],
                   \ 'info':    ['fg', 'DimFzfInfo'],
                   \ 'prompt':  ['fg', 'DimFzfPrompt'],
                   \ 'pointer': ['fg', 'DimFzfPointer'],
                   \ 'marker':  ['fg', 'DimFzfMarker']}

" TODO: remove duplication / needless overriding of previous code
" Highlighting below copied from colors/base16-gruvbox-dark-medium.vim
" Vim editor colors
highlight Normal        ctermfg=07 ctermbg=00
highlight Bold          cterm=bold
highlight Debug         ctermfg=01
highlight Directory     ctermfg=04
highlight Error         ctermfg=00 ctermbg=01
highlight ErrorMsg      ctermfg=01 ctermbg=00
highlight Exception     ctermfg=01
highlight FoldColumn    ctermfg=06 ctermbg=10
highlight Folded        ctermfg=08 ctermbg=10
highlight IncSearch     ctermfg=10 ctermbg=09 cterm=none
highlight Italic        cterm=none " Use cterm=NONE to ensure no italics if not desired
highlight Macro         ctermfg=01
highlight MatchParen    ctermbg=08
highlight ModeMsg       ctermfg=02
highlight MoreMsg       ctermfg=02
highlight Question      ctermfg=04
highlight Search        ctermfg=10 ctermbg=03
highlight Substitute    ctermfg=10 ctermbg=03 cterm=none
highlight SpecialKey    ctermfg=08
highlight TooLong       ctermfg=01
highlight Underlined    ctermfg=01 cterm=underline " Explicitly set underline
highlight Visual        ctermbg=11
highlight VisualNOS     ctermfg=01 cterm=underline " Explicitly set underline
highlight WarningMsg    ctermfg=01
highlight WildMenu      ctermfg=01 ctermbg=03 " Original had s:gui08, s:gui0A, so cterm08, cterm0A
highlight Title         ctermfg=04 cterm=none
highlight Conceal       ctermfg=04 ctermbg=00
highlight Cursor        ctermfg=00 ctermbg=07
highlight NonText       ctermfg=08
highlight LineNr        ctermfg=08 ctermbg=10
highlight SignColumn    ctermfg=08 ctermbg=10
highlight StatusLine    ctermfg=12 ctermbg=11 cterm=none
highlight StatusLineNC  ctermfg=08 ctermbg=10 cterm=none
highlight VertSplit     ctermfg=11 ctermbg=11 cterm=none
highlight ColorColumn   ctermbg=10 cterm=none
highlight CursorColumn  ctermbg=10 cterm=none
highlight CursorLine    ctermbg=10 cterm=none
highlight CursorLineNr  ctermfg=12 ctermbg=10
highlight QuickFixLine  ctermbg=10 cterm=none
highlight PMenu         ctermfg=07 ctermbg=10 cterm=none
highlight PMenuSel      ctermfg=10 ctermbg=07
highlight TabLine       ctermfg=08 ctermbg=10 cterm=none
highlight TabLineFill   ctermfg=08 ctermbg=10 cterm=none
highlight TabLineSel    ctermfg=02 ctermbg=10 cterm=none " Original used s:gui0B, s:gui01 -> cterm0B, cterm01

" Standard syntax highlighting
highlight Boolean      ctermfg=09
highlight Character    ctermfg=01
highlight Comment      ctermfg=08 " Typically comments are a less prominent color
highlight Conditional  ctermfg=05 cterm=bold " Added bold as common for conditionals
highlight Constant     ctermfg=09
highlight Define       ctermfg=05 cterm=none
highlight Delimiter    ctermfg=14
highlight Float        ctermfg=09
highlight Function     ctermfg=04
highlight Identifier   ctermfg=01 cterm=none
highlight Include      ctermfg=04
highlight Keyword      ctermfg=05 cterm=bold " Added bold as common for keywords
highlight Label        ctermfg=03
highlight Number       ctermfg=09
highlight Operator     ctermfg=07 cterm=none
highlight PreProc      ctermfg=03
highlight Repeat       ctermfg=03 cterm=bold " Added bold as common for repeat
highlight Special      ctermfg=06
highlight SpecialChar  ctermfg=14
highlight Statement    ctermfg=01 cterm=bold " Added bold as common for statements
highlight StorageClass ctermfg=03 cterm=italic " Added italic as common for storageclass
highlight String       ctermfg=02
highlight Structure    ctermfg=05
highlight Tag          ctermfg=03
highlight Todo         ctermfg=03 ctermbg=10 cterm=bold " Added bold for visibility
highlight Type         ctermfg=03 cterm=none
highlight Typedef      ctermfg=03

" C highlighting
highlight cOperator   ctermfg=06
highlight cPreCondit  ctermfg=05

" C# highlighting
highlight csClass                 ctermfg=03
highlight csAttribute             ctermfg=03
highlight csModifier              ctermfg=05
highlight csType                  ctermfg=01
highlight csUnspecifiedStatement  ctermfg=04
highlight csContextualStatement   ctermfg=05
highlight csNewDecleration        ctermfg=01

" CSS highlighting
highlight cssBraces      ctermfg=07
highlight cssClassName   ctermfg=05
highlight cssColor       ctermfg=06

" Diff highlighting
highlight DiffAdd      ctermfg=02 ctermbg=10
highlight DiffChange   ctermfg=08 ctermbg=10 " Original used s:gui03, s:gui01 -> cterm03, cterm01
highlight DiffDelete   ctermfg=01 ctermbg=10
highlight DiffText     ctermfg=04 ctermbg=10 cterm=bold " Added bold
highlight DiffAdded    ctermfg=02 ctermbg=00
highlight DiffFile     ctermfg=01 ctermbg=00
highlight DiffNewFile  ctermfg=02 ctermbg=00
highlight DiffLine     ctermfg=04 ctermbg=00
highlight DiffRemoved  ctermfg=01 ctermbg=00

" Git highlighting
highlight gitcommitOverflow       ctermfg=01
highlight gitcommitSummary        ctermfg=02
highlight gitcommitComment        ctermfg=08
highlight gitcommitUntracked      ctermfg=08
highlight gitcommitDiscarded      ctermfg=08
highlight gitcommitSelected       ctermfg=08
highlight gitcommitHeader         ctermfg=05
highlight gitcommitSelectedType   ctermfg=04
highlight gitcommitUnmergedType   ctermfg=04
highlight gitcommitDiscardedType  ctermfg=04
highlight gitcommitBranch         ctermfg=09 cterm=bold
highlight gitcommitUntrackedFile  ctermfg=03
highlight gitcommitUnmergedFile   ctermfg=01 cterm=bold
highlight gitcommitDiscardedFile  ctermfg=01 cterm=bold
highlight gitcommitSelectedFile   ctermfg=02 cterm=bold

" GitGutter highlighting
highlight GitGutterAdd           ctermfg=02 ctermbg=10
highlight GitGutterChange        ctermfg=04 ctermbg=10
highlight GitGutterDelete        ctermfg=01 ctermbg=10
highlight GitGutterChangeDelete  ctermfg=05 ctermbg=10

" HTML highlighting
highlight htmlBold    ctermfg=03 cterm=bold
highlight htmlItalic  ctermfg=05 cterm=italic
highlight htmlEndTag  ctermfg=07
highlight htmlTag     ctermfg=07

" JavaScript highlighting
highlight javaScript        ctermfg=07
highlight javaScriptBraces  ctermfg=07
highlight javaScriptNumber  ctermfg=09
" pangloss/vim-javascript highlighting
highlight jsOperator          ctermfg=04
highlight jsStatement         ctermfg=05
highlight jsReturn            ctermfg=05
highlight jsThis              ctermfg=01 cterm=bold
highlight jsClassDefinition   ctermfg=03
highlight jsFunction          ctermfg=05 cterm=italic
highlight jsFuncName          ctermfg=04
highlight jsFuncCall          ctermfg=04 cterm=none
highlight jsClassFuncName     ctermfg=04
highlight jsClassMethodType   ctermfg=05 cterm=italic
highlight jsRegexpString      ctermfg=06
highlight jsGlobalObjects     ctermfg=03
highlight jsGlobalNodeObjects ctermfg=03
highlight jsExceptions        ctermfg=03
highlight jsBuiltins          ctermfg=03

" Mail highlighting
highlight mailQuoted1  ctermfg=03
highlight mailQuoted2  ctermfg=02
highlight mailQuoted3  ctermfg=05
highlight mailQuoted4  ctermfg=06
highlight mailQuoted5  ctermfg=04
highlight mailQuoted6  ctermfg=03
highlight mailURL      ctermfg=04 cterm=underline
highlight mailEmail    ctermfg=04 cterm=underline

" Markdown highlighting
highlight markdownCode              ctermfg=02
highlight markdownError             ctermfg=07 ctermbg=00
highlight markdownCodeBlock         ctermfg=02
highlight markdownHeadingDelimiter  ctermfg=04 cterm=bold

" NERDTree highlighting
highlight NERDTreeDirSlash  ctermfg=04
highlight NERDTreeExecFile  ctermfg=07 cterm=bold

" PHP highlighting
highlight phpMemberSelector  ctermfg=07
highlight phpComparison      ctermfg=07
highlight phpParent          ctermfg=07
highlight phpMethodsVar      ctermfg=06

" Python highlighting
highlight pythonOperator  ctermfg=05
highlight pythonRepeat    ctermfg=05
highlight pythonInclude   ctermfg=05
highlight pythonStatement ctermfg=05

" Ruby highlighting
highlight rubyAttribute               ctermfg=04
highlight rubyConstant                ctermfg=03
highlight rubyInterpolationDelimiter  ctermfg=14
highlight rubyRegexp                  ctermfg=06
highlight rubySymbol                  ctermfg=02
highlight rubyStringDelimiter         ctermfg=02

" SASS highlighting
highlight sassidChar     ctermfg=01
highlight sassClassChar  ctermfg=09
highlight sassInclude    ctermfg=05
highlight sassMixing     ctermfg=05
highlight sassMixinName  ctermfg=04

" Signify highlighting
highlight SignifySignAdd     ctermfg=02 ctermbg=10
highlight SignifySignChange  ctermfg=04 ctermbg=10
highlight SignifySignDelete  ctermfg=01 ctermbg=10

" Spelling highlighting
highlight SpellBad     cterm=undercurl
highlight SpellLocal   cterm=undercurl
highlight SpellCap     cterm=undercurl
highlight SpellRare    cterm=undercurl
" Note: For Spell*, cterm=undercurl is used. The specific color for the
" undercurl is terminal-dependent or might use a default error color.
" The original script used guisp for GUI, which has no direct cterm equivalent
" for setting the undercurl color via 'highlight'.

" Startify highlighting
highlight StartifyBracket  ctermfg=08
highlight StartifyFile     ctermfg=15
highlight StartifyFooter   ctermfg=08
highlight StartifyHeader   ctermfg=02 cterm=bold
highlight StartifyNumber   ctermfg=09
highlight StartifyPath     ctermfg=08 cterm=italic
highlight StartifySection  ctermfg=05 cterm=bold
highlight StartifySelect   ctermfg=06
highlight StartifySlash    ctermfg=08
highlight StartifySpecial  ctermfg=08

" Java highlighting
highlight javaOperator     ctermfg=04
