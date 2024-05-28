vim.opt_local.commentstring = "' %s"

vim.keymap.set({ "n", "v" }, "<leader>xb", function() vim.cmd("!plantuml " .. vim.fn.expand("%")) end)
