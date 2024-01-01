return {
    {
        "echasnovski/mini.nvim",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("mini.comment").setup()
            require("mini.completion").setup()
            require("mini.pairs").setup()
            require("mini.sessions").setup()

            -- use <Tab> and <S-Tab> to navigate completion suggestions
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspTabComplete", {}),
                callback = function()
                    vim.keymap.set('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true })
                    vim.keymap.set('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })
                end,
            })
        end
    },
}
