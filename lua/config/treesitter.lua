require'nvim-treesitter.configs'.setup {
  ensure_installed = {"go", "lua", "rust", "vim", "vimdoc"},

  auto_install = true,

  highlight = {
    enable = true,
    disable = {},
  },

  -- Additional Tree-sitter modules and configurations...
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>ss", 
      -- I have no idea why this is not working...
      node_incremental = "<leader>si",
      scope_incremental = "<leader>sc",
      node_decremental = "<leader>sd",
    },
  }, 

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        -- You can also use captures from other query groups like `locals.scm`
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
      },
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      include_surrounding_whitespace = true,
    },
  },
}
