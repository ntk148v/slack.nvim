-- Lightline theme for slack.nvim
local colors = require("slack.colors").get_colors()

local theme = {
  normal = {
    left = { { colors.bg_dark, colors.blue }, { colors.fg, colors.bg_light } },
    middle = { { colors.fg, colors.bg_dark } },
    right = { { colors.bg_dark, colors.blue }, { colors.fg, colors.bg_light } },
    error = { { colors.red, colors.bg_dark } },
    warning = { { colors.yellow, colors.bg_dark } },
  },
  insert = {
    left = { { colors.bg_dark, colors.green }, { colors.fg, colors.bg_light } },
    right = { { colors.bg_dark, colors.green }, { colors.fg, colors.bg_light } },
  },
  visual = {
    left = { { colors.bg_dark, colors.purple }, { colors.fg, colors.bg_light } },
    right = { { colors.bg_dark, colors.purple }, { colors.fg, colors.bg_light } },
  },
  replace = {
    left = { { colors.bg_dark, colors.red }, { colors.fg, colors.bg_light } },
    right = { { colors.bg_dark, colors.red }, { colors.fg, colors.bg_light } },
  },
  inactive = {
    left = { { colors.fg_dark, colors.bg_light }, { colors.fg_dark, colors.bg_light } },
    middle = { { colors.fg_dark, colors.bg_dark } },
    right = { { colors.fg_dark, colors.bg_light }, { colors.fg_dark, colors.bg_light } },
  },
}

return theme
