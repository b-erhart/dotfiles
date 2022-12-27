local status_ok, mini_tabline = pcall(require, "mini.tabline")
if not status_ok then
  return
end

mini_tabline.setup({
    show_icons = true,
    set_vim_settings = true,
    tabpage_section = "left",
})
