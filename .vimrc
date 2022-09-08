unlet! skip_defaults_vim
if !has('nvim')
    source $VIMRUNTIME/defaults.vim
endif

set mouse=
set textwidth=80
set nu rnu hls is colorcolumn=81
set list listchars=tab:>-,eol:¶
set tabstop=4 shiftwidth=4 expandtab
"imap <S-space><S-space> <Esc>
"nnoremap <S-space> <C-w>

set comments=sr:/*,mb:**,ex:*/
set winwidth=84

map <C-K> :ClangFormat <cr>
imap <C-K> <c-o>:ClangFormat <cr>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

runtime! ftplugin/man.vim
