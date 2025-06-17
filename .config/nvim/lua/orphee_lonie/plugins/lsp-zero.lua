return {
    'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',

        {
            "mason-org/mason-lspconfig.nvim",
            version = "1.32.0",
            opts = {},
            dependencies = {
                { "mason-org/mason.nvim", version = "1.11.0", opts = {} },
                "neovim/nvim-lspconfig",
            },
        }
    },
}
