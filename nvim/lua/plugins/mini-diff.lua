MiniDeps.add({ source = "echasnovski/mini.diff" })

MiniDeps.later(function()
    require("mini.diff").setup({
        view = {
            style = "sign",
            signs = {
                add = "+",
                change = "~",
                delete = "_",
            },
        },
    })
end)
