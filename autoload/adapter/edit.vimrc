" =====================================================================
" 
" Edit adapter of CIM
" Author: Shiyue He (hsy1995313@gmail.com)
" Copyright (C): 2023
" 
" =====================================================================

if index(g:loaded_edit_plugins, 'nerdtree') != -1
    " NERDTree: 
    noremap <C-n> :NERDTreeToggle<CR>  

    let NERTTreeCaseSensitiveSort = 1
    let NERDTreeWinSize = 35

    " Automatic open NERDTree when open vim and go to the previous window
    autocmd VimEnter *.{py,h,c} NERDTree | wincmd p
    " Close vim if the only window left open is a NERDTree
    autocmd BufEnter * :call s:CloseNERDTree()
    " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
    autocmd BufEnter * :call s:PreventReplacingNERDTree()

    function! s:CloseNERDTree()
        if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()
            quit
        endif

    endfunction

    function! s:PreventReplacingNERDTree()
        if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1
            let buf=bufnr('%') 
            buffer# 
            execute "normal! \<C-W>w"
            execute 'buffer'.buf
        endif

    endfunction

endif

" LeaderF: 
if index(g:loaded_edit_plugins, 'leaderf') != -1
    let g:Lf_WindowPosition = 'popup'

    " Vista.vim:
    function! NearestMethodOrFunction() abort
      return get(b:, 'vista_nearest_method_or_function', '')
    endfunction

    set statusline+=%{NearestMethodOrFunction()}

endif


if index(g:loaded_edit_plugins, 'vista') != -1
    let g:vista_sidebar_width = 50

endif

" Nerdcommenter: 
if index(g:loaded_edit_plugins, 'nerdcomment') != -1
endif
