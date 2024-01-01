return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = true,
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require('nvim-treesitter.configs').setup({
            -- A list of parser names, or "all"
            ensure_installed = {
                "c",
                "go",
                "java",
                "lua",
                "markdown",
                "markdown_inline",
                "query",
                "vim",
                "vimdoc",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,

                -- Disable treesitter for certain file formats
                disable = {
                    "latex"
                },
            },

            indent = {
                enable = true,
            },
        })
    end,
}
