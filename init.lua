-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
 'ThePrimeagen/vim-be-good',
 'navarasu/onedark.nvim',
 'nvim-lualine/lualine.nvim',
 {
	 'folke/which-key.nvim', opts = {}
 }
})

-- Theme 
require('onedark').load()


-- Line
require('lualine').setup()


vim.opt.nu = true
vim.opt.relativenumber = true

vim.keymap.set('n', '<esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
