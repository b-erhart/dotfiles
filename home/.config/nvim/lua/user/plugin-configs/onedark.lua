local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end

onedark.load()
vim.cmd.colorscheme "onedark"
