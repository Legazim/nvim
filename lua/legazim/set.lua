vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.list = true
vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "eol:↴"

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir =  .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- vim.opt.clipboard = 'unnamedplus'

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
