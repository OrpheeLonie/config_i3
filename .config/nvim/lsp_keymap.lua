vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.server_capabilities.hoverProvider then
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    end

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = args.buf })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = args.buf })
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = args.buf })
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, { buffer = args.buf })
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, { buffer = args.buf })
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, { buffer = args.buf })
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, { buffer = args.buf })
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, { buffer = args.buf })
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer = args.buf })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = args.buf })
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, { buffer = args.buf })

  end,
})
