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
        colors = {
          orange_2 = "#ffbf80"
        },
        highlights = {
          ["@include"] = {fg = '$orange_2'},
          ["@keyword"] = {fg = '$orange_2'},
          ["@keyword.function"] = {fg = '$orange_2'},
          ["@define"] = {fg = '$orange_2'},
        }
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
