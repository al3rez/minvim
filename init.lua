-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true
vim.o.completeopt = "menu,menuone,noselect"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.smartindent = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.termguicolors = false
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.opt.clipboard = "unnamedplus"

-- UI settings
vim.o.laststatus = 0
vim.o.winborder = "rounded"
vim.cmd("set foldmethod=marker")
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set background=dark")

-- Load plugins and mappings
require('plugins')
require('mappings')
