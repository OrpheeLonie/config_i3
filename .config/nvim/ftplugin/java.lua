vim.lsp.start({
  name = 'java-lsp-server',
  cmd = {'/home/orphee/Documents/Software/lsp/java-language-server/dist/lang_server_linux.sh'},
  root_dir = vim.fs.dirname(vim.fs.find({'pom.xml'}, { upward = true })[1])
})
