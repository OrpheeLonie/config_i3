return {
    'nvim-telescope/telescope.nvim', tag = '0.2.1',
    -- or                          , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
        -- optional but recommended
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
}
