MiniDeps.add({ source = "nvim-lualine/lualine.nvim" })

MiniDeps.now(function()
    require("lualine").setup({
        options = {
            icons_enabled = false,
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
        sections = {
            lualine_x = {'filetype'},
        },
    })
end)
