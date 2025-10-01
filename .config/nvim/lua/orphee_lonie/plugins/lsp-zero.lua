return {
    'neovim/nvim-lspconfig',
    dependencies = {
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {},
        },
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
