local colorscheme = "NeoSolarized"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- vim.g.tokyonight_style = "night" For some reason it doesn't work here. So I moved it to the keymaps file
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
