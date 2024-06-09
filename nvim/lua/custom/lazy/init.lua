-- Install lazy.nvim automatically
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("custom.lazy.plugins", {
  ui = {
    icons = {
      cmd = "[cmd]",
      config = "[config]",
      event = "[event]",
      ft = "[ft]",
      init = "[init]",
      import = "[import]",
      keys = "[keys]",
      lazy = "[lazy]",
      plugin = "[plugin]",
      runtime = "[runtime]",
      require = "[require]",
      source = "[source]",
      start = "[start]",
      task = "[task]",
    },
  },
  change_detection = {
    notify = false,
  },
})
