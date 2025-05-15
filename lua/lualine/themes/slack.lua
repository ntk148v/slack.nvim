-- Lualine theme for slack.nvim
local colors = require("slack.colors").get_colors()

return {
  normal = {
    a = { fg = colors.bg_dark, bg = colors.blue, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  insert = {
    a = { fg = colors.bg_dark, bg = colors.green, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  visual = {
    a = { fg = colors.bg_dark, bg = colors.purple, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  replace = {
    a = { fg = colors.bg_dark, bg = colors.red, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  command = {
    a = { fg = colors.bg_dark, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_light },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  inactive = {
    a = { fg = colors.fg_dark, bg = colors.bg_light, gui = "bold" },
    b = { fg = colors.fg_dark, bg = colors.bg_light },
    c = { fg = colors.fg_dark, bg = colors.bg_dark },
  },
}
