return  {
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require('everforest').setup({
        background = 'hard',
        vim.cmd.colorscheme 'everforest'
      })
    end,
  },
  { 
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'everforest',
        component_separators = '|',
        section_separators = '',
      }
    },
  }
}
