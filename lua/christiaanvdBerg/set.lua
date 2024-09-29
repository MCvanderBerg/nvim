
-- Set cursor shapes for different modes
vim.opt.guicursor = {
  "n-v-c:block",   -- Normal, Visual, and Command modes: block cursor
  "i-ci-ve:ver25", -- Insert mode: vertical bar cursor (25% width)
  "r-cr-o:hor20"   -- Replace mode and scrolling: horizontal bar cursor (20% height)
}

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes:2"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.g.mapleader = " "

vim.api.nvim_buf_set_option(0, 'modifiable', true)

-- Enable syntax-based folding
vim.opt.foldmethod = "syntax"
vim.opt.foldenable = true   -- Enable folding
vim.opt.foldlevelstart = 99 -- Open all folds by default
