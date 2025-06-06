" =====================================================================
"
" Autocompletion
"
" Author: OctHe
" Copyright (C)
"
" =====================================================================

function! completer#TComment()

  if empty(globpath(&rtp, '/plugin/tcomment.vim'))
    return
  endif

  let g:tcomment_opleader1 = '<Leader>c'

endfunction

" YCM: a powerful completion plugin based on LSP. It relies on cmake,
" make, g++, python3-dev and LSP. YCM does not use system-wide LSP.
" Install the prerequisites in Debian with
"   sudo apt install cmake make g++ python3-dev
" In openSUSE with
"   sudo zypper install cmake make g++ python3-deval
function! completer#YCM()

  if empty(globpath(&rtp, '/plugin/youcompleteme.vim'))
    return
  endif

  let g:ycm_confirm_extra_conf = 0
  let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

  let g:ycm_show_diagnostics_ui = 0

  " Clear the YCM blacklist, so it works for all files
  let g:ycm_filetype_blacklist = {}


endfunction

" Ultisnips: snippets engine that uses snippet database
" vim-snippets: snippet database
function! completer#Ultisnips()

  if empty(globpath(&rtp, '/plugin/UltiSnips.vim'))
    return
  endif

  " Trigger configuration. Change this to something other than <tab> if use one
  " of the following:
  " - https://github.com/Valloric/YouCompleteMe
  " - https://github.com/nvim-lua/completion-nvim
  let g:UltiSnipsExpandTrigger="<CR>"

  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"

endfunction

" vim: set sw=2 sts=2 et fdm=marker:
