return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {},
  keys = {
    { "<leader>tt", "<CMD>ToggleTerm direction=float name=popup<CR>", { "n", "v" } },
    { "<leader>tj", "<CMD>ToggleTerm direction=horizontal name=h1<CR>", { "n", "v" } },
    { "<leader>tk", "<CMD>ToggleTerm direction=horizontal name=h2<CR>", { "n", "v" } },
    { "<leader>tl", "<CMD>ToggleTerm direction=horizontal name=h3<CR>", { "n", "v" } },
    { "<leader>tö", "<CMD>ToggleTerm direction=horizontal name=h4<CR>", { "n", "v" } },
  }
}
