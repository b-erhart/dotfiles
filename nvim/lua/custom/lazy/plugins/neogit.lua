return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("neogit").setup()
    require("diffview").setup({
      use_icons = false,
    })

    vim.keymap.set({ "n", "v" }, "<leader>g", "<CMD>Neogit<CR>")
  end
}
