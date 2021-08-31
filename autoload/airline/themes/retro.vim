" Vim Airline theme.
"
" Repository: https://github.com/idlua/retro
" Author:     Luan Vicente <hi[at]idlua.me>


" COLOR PALETTE -------------------------------------------------------------{{{
let g:airline#themes#retro#palette = {}

let s:guiBlack       = "#080808"
let s:guiGray        = "#1c1c1c00"
let s:guiLightgray   = "#6c6c6c"
let s:guiWhite       = "#e4e4e4"
let s:guiRed         = "#ff8170"
let s:guiGreen       = "#84b360"
let s:guiBlue        = "#78c2b3"
let s:guiOrange      = "#ffa14f"

let s:ctermBlack     = "232"
let s:ctermGray      = "NONE"
let s:ctermLightgray = "242"
let s:ctermWhite     = "254"
let s:ctermRed       = "2"
let s:ctermGreen     = "150"
let s:ctermBlue      = "3"
let s:ctermOrange    = "3"
" }}}
" BASICS --------------------------------------------------------------------{{{
let s:modified = { 'airline_c': [ '#ffb964', '', s:ctermRed, '', '' ] }
" }}}


" MODES SUPPORT
" NORMAL MODE ---------------------------------------------------------------{{{
let s:N1 = [ s:guiWhite      , s:guiGray , s:ctermWhite     , s:ctermGray ]
let s:N2 = [ s:guiLightgray  , s:guiGray , s:ctermLightgray , s:ctermGray  ]
let s:N3 = [ s:guiLightgray  , s:guiGray , s:ctermLightgray , s:ctermGray ]
let g:airline#themes#retro#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#retro#palette.normal_modified = s:modified
" }}}
" INSERT MODE ---------------------------------------------------------------{{{
let s:I1 = [ s:guiGreen     , s:guiGray  , s:ctermGreen     , s:ctermGray ]
let s:I2 = [ s:guiLightgray , s:guiGray  , s:ctermLightgray , s:ctermGray ]
let s:I3 = [ s:guiGreen     , s:guiGray  , s:ctermGreen     , s:ctermGray ]
let g:airline#themes#retro#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#retro#palette.insert_modified = s:modified
" }}}
" VISUAL MODE ---------------------------------------------------------------{{{
let s:V1 = [ s:guiBlue      , s:guiGray , s:ctermBlue      , s:ctermGray ]
let s:V2 = [ s:guiLightgray , s:guiGray , s:ctermLightgray , s:ctermGray  ]
let s:V3 = [ s:guiBlue      , s:guiGray , s:ctermBlue      , s:ctermGray ]
let g:airline#themes#retro#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#retro#palette.visual_modified = s:modified
" }}}
" REPLACE MODE --------------------------------------------------------------{{{
let s:R1 = [ s:guiOrange     , s:guiGray , s:ctermOrange     , s:ctermGray  ]
let s:R2 = [ s:guiLightgray  , s:guiGray , s:ctermLightgray  , s:ctermGray ]
let s:R3 = [ s:guiOrange     , s:guiGray , s:ctermOrange     , s:ctermGray  ]
let g:airline#themes#retro#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#retro#palette.replace_modified = s:modified
" }}}
" INACTIVE MODE -------------------------------------------------------------{{{
let s:IN1 = [ s:guiLightgray , s:guiGray , s:ctermLightgray , s:ctermGray  ]
let s:IN2 = [ s:guiLightgray , s:guiGray , s:ctermLightgray , s:ctermGray ]
let s:IN3 = [ s:guiLightgray , s:guiGray , s:ctermLightgray , s:ctermGray ]
let g:airline#themes#retro#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#retro#palette.inactive_modified = s:modified
" }}}


" SPECIFIC PLUGIN SUPPORT
" CtrlP ---------------------------------------------------------------------{{{
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:ctermGray  ]
let s:CP2 = [ s:guiRed   , s:gui03 , s:ctermRed   , s:ctermGray  ]
let s:CP3 = [ s:guiRed   , s:gui0D , s:ctermRed   , s:ctermGray ]

let g:airline#themes#retro#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
" }}}

