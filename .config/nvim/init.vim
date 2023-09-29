set mouse=
set nu rnu hls is colorcolumn=81
set list listchars=tab:>-,trail:-,nbsp:+
set tabstop=4 shiftwidth=4 expandtab
set winwidth=84

lua require("lsp_keymap")

" lazy
lua require("lazy_nvim")
