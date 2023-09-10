vim.lsp.start({
  name = 'rust-lsp-server',
  cmd = {'rust-analyzer'},
  root_dir = vim.fs.dirname(vim.fs.find({'Cargo.lock', 'Cargo.toml'}, { upward = true })[1]),
})
