-- Color palette and color utility functions for slack.nvim

local util = require("slack.util")
local M = {}

function M.get_colors()
	local base_colors = {
		base00 = "#181818",
		base01 = "#454545",
		base02 = "#5a5a5a",
		base03 = "#686868",
		base04 = "#ababab",
		base05 = "#909090",
		base06 = "#b0b0b0",
		base07 = "#ffffff",
		base08 = "#e01563",
		base09 = "#e9a820",
		base0A = "#e9a820",
		base0B = "#3eb991",
		base0C = "#6ecadc",
		base0D = "#6ecadc",
		base0E = "#e01563",
		base0F = "#3eb991",
	}
	local bg = vim.o.background or "dark"
	if bg == "light" then
		base_colors = {
			base00 = "#ffffff",
			base01 = "#d0d0d0",
			base02 = "#a8a8a8",
			base03 = "#a0a0a0",
			base04 = "#505050",
			base05 = "#484848",
			base06 = "#303030",
			base07 = "#181818",
			base08 = "#e01563",
			base09 = "#e9a820",
			base0A = "#e9a820",
			base0B = "#3eb991",
			base0C = "#6ecadc",
			base0D = "#6ecadc",
			base0E = "#e01563",
			base0F = "#3eb991",
		}
	end

	return {
		bg_dark = base_colors.base00,
		bg = base_colors.base01,
		bg_light = base_colors.base02,
		bg_lighter = base_colors.base03,
		grey = base_colors.base04,
		grey_dark = base_colors.base05,
		red = base_colors.base08,
		heavy_red = base_colors.base08,
		green = base_colors.base0B,
		green_high = base_colors.base0F,
		heavy_green = base_colors.base0F,
		blue = base_colors.base0D,
		blue_light = base_colors.base0D,
		yellow = base_colors.base0A,
		yellow_light = base_colors.base0A,
		orange = base_colors.base09,
		orange_light = base_colors.base09,
		purple = base_colors.base0E,
		cyan = base_colors.base0C,
		cyan_dark = base_colors.base0C,
		fg = base_colors.base05,
		fg_light = base_colors.base06,
		fg_dark = "#676e96",
		white = base_colors.base07,
	}
end

return M
