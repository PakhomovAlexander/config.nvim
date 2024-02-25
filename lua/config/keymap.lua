vim.keymap.set('n', '<esc><esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)


-- Move highlighted blocks with J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")


