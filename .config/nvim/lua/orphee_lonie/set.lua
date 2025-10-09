vim.o.mouse=""
vim.o.nu=true
vim.o.rnu=true
vim.o.hls=true
vim.o.is=true
vim.opt.colorcolumn="81"
vim.o.list=true
vim.o.listchars="tab:>-,trail:-,nbsp:+"
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.expandtab=true
vim.o.winwidth=84

-- vim.opt.swapfile = false
-- vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.cmd("colorscheme wildcharm")

vim.o.inccommand="split"

vim.o.ignorecase=true
vim.o.smartcase=true

vim.g.netrw_banner=0
vim.g.netrw_liststyle=3
