MiniDeps.add({
    source = "saghen/blink.cmp",
})

MiniDeps.later(function()
    require("blink.cmp").setup({
        completion = {
            menu = {
                draw = {
                    columns = { { 'label', 'label_description', gap = 1 } },
                },
            },
        },
        fuzzy = {
            implementation = "lua",
        },
        sources = {
            default = { "lsp", "path" },
        },
        signature = {
            enabled = true,
        },
        keymap = {
            preset = "super-tab",
        },
    })
end)
