vim.opt_local.commentstring = "' %s"

vim.keymap.set({ "n", "v" }, "<leader>xb", function()
    vim.cmd("write")
    vim.cmd("!plantuml " .. vim.fn.expand("%"))
end, { buffer = true })
