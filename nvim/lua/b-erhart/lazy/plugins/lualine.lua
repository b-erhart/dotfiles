return {
    "nvim-lualine/lualine.nvim",
    lazy = true,
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = false,
            component_separators = { left = "|", right = "|"},
            section_separators = { left = "", right = ""},
            disabled_filetypes = {
                "Lazy",
                "NvimTree"
            }
        },
        sections = {
            lualine_b = {
                {
                    require("grapple").key,
                    cond = require("grapple").exists
                }
            }
        },
    },
}
