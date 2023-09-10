vim.lsp.start({
  name = 'cmake-lsp-server',
  cmd = {'cmake-language-server'},
  root_dir = vim.fs.dirname("build/"),
})
