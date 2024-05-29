return {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
        require("mini.comment").setup({})
        require("mini.completion").setup({
            auto_setup = false,
            fallback = function() end,
        })
        require("mini.cursorword").setup({})

        -- set keybindings for completion
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspTabComplete", {}),
            callback = function()
                vim.keymap.set("i", "<Tab>",   [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true })
                vim.keymap.set("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })
            end,
        })

        -- change highlighting style for cursorword
        vim.cmd("highlight! link MiniCursorword Visual")
    end,
}
