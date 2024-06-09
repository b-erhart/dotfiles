return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = { {
                    "mode",
                    fmt = function(str)
                        return (str:gsub("(%a)[^%s%-]*[%s%-]?", "%1"))
                    end,
                } },
                lualine_b = { "diff" },
                lualine_c = { "filename" },
                lualine_x = { "diagnostics" },
                lualine_y = { "progress" },
                lualine_z = { "location" }
            },
        })
    end,
}
