" =====================================================================
" 
" Filetype configuration for texinfo
" Author: OctHe
" Copyright (C): 2023-2025
" 
" =====================================================================

set spell   " Set spell check
set spelllang+=cjk  " Spell check for chinese

" Clear the default highlight of the Spell check
highlight clear SpellBad
" Set the highlight style as underline
highlight SpellBad cterm=underline  
