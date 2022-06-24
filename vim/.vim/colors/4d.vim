hi clear

if exists('syntax on')
 syntax reset
endif

let g:colors_name='4d'

set background=light

" colors down there vvv

hi Normal ctermfg=black
hi NonText ctermfg=black
hi comment ctermfg=darkblue
hi comment cterm=italic
hi constant ctermfg=black
hi string ctermfg=darkgreen
hi identifier ctermfg=black cterm=italic cterm=underline
hi statement ctermfg=black 
hi define ctermfg=black
hi preproc ctermfg=black
hi type ctermfg=black 
hi special ctermfg=black 
hi Underlined ctermfg=black cterm=underline
hi label ctermfg=black
hi operator ctermfg=black
hi delimiter ctermfg=black cterm=NONE

hi ErrorMsg ctermfg=black cterm=bold ctermbg=lightyellow
hi WarningMsg ctermfg=black cterm=bold ctermbg=lightyellow
hi ModeMsg ctermfg=black
hi MoreMsg ctermfg=black
hi Error ctermfg=black ctermbg=lightyellow

" TODO: food
hi Todo ctermfg=black ctermfg=black ctermbg=white
hi Cursor ctermfg=black ctermfg=black
hi Search ctermfg=black ctermfg=black
hi IncSearch ctermfg=black ctermfg=black
hi LineNr ctermfg=black
hi title gui=bold cterm=bold

hi StatusLine cterm=none 
hi StatusLineNC cterm=none ctermbg=white
hi VertSplit ctermfg=black ctermfg=black

hi Visual term=reverse ctermfg=black ctermfg=black 

hi DiffChange ctermfg=black ctermfg=black
hi DiffText ctermfg=black ctermfg=black
hi DiffAdd ctermfg=black ctermfg=black
hi DiffDelete ctermfg=black ctermfg=black

hi Folded ctermfg=black ctermbg=254
hi FoldColumn ctermfg=black ctermfg=black
hi cIf0 ctermfg=black
