return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('config.treesitter')
    end
  },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'ray-x/go.nvim',                              ft = { 'go' } }, -- Optional, for enhanced Go support
}
