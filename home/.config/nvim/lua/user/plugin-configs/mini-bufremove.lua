local status_ok, mini_bufremove = pcall(require, "mini.bufremove")
if not status_ok then
  return
end

mini_bufremove.setup({
    set_vim_settings = true,
})
