local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files { path_display = {"truncate"} }
end, {})
vim.keymap.set('n', '<leader>fd', function()
    builtin.find_files {no_ignore=true, no_ignore_parent=true}
end, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ft', function()
    builtin.builtin {include_extensions=false, use_default_opts=false}
end, {})
vim.keymap.set('n', '<leader>fr', builtin.resume, {})
