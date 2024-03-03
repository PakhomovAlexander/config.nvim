require'nvim-treesitter.configs'.setup {
  -- Ensure all maintained parsers are installed
  ensure_installed = {"go", "lua"},

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- Enable Tree-sitter highlighting
  highlight = {
    enable = true,
    -- Disable highlighting for these languages (optional)
    disable = {},
  },

  -- Additional Tree-sitter modules and configurations...
}
