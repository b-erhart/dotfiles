local status_ok, mini_statusline = pcall(require, "mini.statusline")
if not status_ok then
  return
end

mini_statusline.setup({
    use_icons = true,
    set_vim_settings = true,
})
