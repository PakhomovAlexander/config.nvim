vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
	'clone',
	'--filter=blob:none',
	'https://github.com/folke/lazy.nvim.git',
	'--branch=stable',
	lazypath,
}
end
vim.opt.rtp:prepend(lazypath)


require'lazy'.setup'plugins'
require'config'

vim.cmd.colorscheme 'everforest'


-- todo
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    -- vim.keymap.set('n', 'crr', vim.lsp.buf.rename, { buffer = args.buf })
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer = args.buf })
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = args.buf })
  end,
})
