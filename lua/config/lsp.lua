vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[args.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    vim.keymap.set({ 'n', 'v' }, '<leader>r', vim.lsp.buf.rename, { buffer = args.buf })
    vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, { buffer = args.buf })
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    vim.keymap.set('n', '<leader>jr', vim.lsp.buf.references, { buffer = args.buf })

    local opts = { buffer = args.buf }
    vim.keymap.set('n', '<leader>jD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<leader>jd', vim.lsp.buf.definition, opts)
    if client.server_capabilities.hoverProvider then
      vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { buffer = args.buf })
    end
    vim.keymap.set('n', '<leader>ji', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-i>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>l', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})



vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- Disable signs
    signs = false,
  }
)
