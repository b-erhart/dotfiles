-- PLUGINS

local fn = vim.fn

-- install packer if not already installed
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer - please close and reopen neovim."
  vim.cmd [[packadd packer.nvim]]
end


-- reload plugins when this file is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]


-- get packer using a protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


-- open the packer dialog in a popup
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


-- install plugins
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- let packer manage itself
    use "nvim-lua/plenary.nvim" -- useful lua functions used by lots of plugins
    use "nvim-lua/popup.nvim" -- implementation of the popup API from vim in neovim
    use { "echasnovski/mini.nvim", branch = "stable" } -- multiple useful and minimal tools
    use "navarasu/onedark.nvim" -- OneDark color scheme
    use {
        'nvim-tree/nvim-tree.lua', -- tree style file explorer
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

  -- automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
