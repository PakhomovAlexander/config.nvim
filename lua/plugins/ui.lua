return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function() 
      require('onedark').setup {
        style = 'warmer',
        lualine = {
          transparent = true
        },
      }
      vim.cmd.colorscheme 'onedark'
    end,
  }, 

  { 
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      }
    },
  }
}
