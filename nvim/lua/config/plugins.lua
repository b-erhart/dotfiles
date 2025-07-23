local function clone_paq()
  local path = vim.fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
  local is_installed = vim.fn.empty(vim.fn.glob(path)) == 0
  if not is_installed then
    vim.fn.system { "git", "clone", "--depth=1", "https://github.com/savq/paq-nvim.git", path }
    return true
  end
end

local function bootstrap_paq(packages)
  local first_install = clone_paq()
  vim.cmd.packadd("paq-nvim")
  local paq = require("paq")
  if first_install then
    vim.notify("Installing plugins... If prompted, hit Enter to continue.")
  end

  paq(packages)
  paq.install()
end

bootstrap_paq({
  "savq/paq-nvim",

  "rebelot/kanagawa.nvim",

  "nvim-lua/plenary.nvim",
  "NMAC427/guess-indent.nvim",
  "nvim-lualine/lualine.nvim",
  "stevearc/oil.nvim",
  "nvim-telescope/telescope.nvim",
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "mason-org/mason-lspconfig.nvim",

  "echasnovski/mini.pairs",
  "echasnovski/mini.diff",
  "echasnovski/mini.completion",
})

require("plugins.kanagawa")

require("plugins.guess-indent")
require("plugins.lualine")
require("plugins.oil")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.mason-lspconfig")

require("mini.pairs").setup()
require("mini.diff").setup()
require("mini.completion").setup()

