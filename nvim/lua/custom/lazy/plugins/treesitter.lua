return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                -- should already be included (currently missing on Fedora)
                "c",
                "lua",
                "markdown",
                "markdown_inline",
                "query",
                "vim",
                "vimdoc",

                -- custom
                "css",
                "javascript",
                "scss",
                "typescript",
                "vue",
            },
            highlight = {
                enable = true,
            },
        }
    end,
}
