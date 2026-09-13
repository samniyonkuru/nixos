-- options
vim.o.number = true
vim.o.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.o.shiftwidth = 2
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

--config
require('config.keybinds')
require('config.plugins')

--lsp
require('lsp.lua')
require('lsp.haskell')
require('lsp.elm')
require('lsp.typescript')
require('lsp.python')

-- colors
vim.cmd("colorscheme gruvbox")

