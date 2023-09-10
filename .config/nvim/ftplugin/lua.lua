vim.lsp.start({
  name = 'lua-lsp-server',
  cmd = {'lua-language-server'},
  root_dir = vim.fs.dirname(vim.fs.find('luarc.lua', { upward = true, })[1]),
--   workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = vim.api.nvim_get_runtime_file("", true),
--       },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
    },
  },
})
