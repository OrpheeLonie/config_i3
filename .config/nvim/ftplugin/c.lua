vim.lsp.start({
  name = 'ccls-lsp-server',
  cmd = {'ccls'},
  root_dir = vim.fs.dirname(vim.fs.find({'CMakeLists.txt', 'Makefile'}, { upward = true })[1])
})
