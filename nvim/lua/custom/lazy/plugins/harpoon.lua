return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        vim.keymap.set("n", "<leader>jt", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>jl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>ja", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>js", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>jd", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>jf", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>jg", function() harpoon:list():select(5) end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>jp", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>jn", function() harpoon:list():next() end)
    end
}
