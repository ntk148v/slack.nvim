-- Main module for slack.nvim colorscheme
local colors_util = require("slack.colors")
local groups_util = require("slack.groups")
local terminal_util = require("slack.terminal")

local M = {}

function M.setup()
	local colors = colors_util.get_colors()
	local groups = groups_util.create_groups(colors)
	for group, opts in pairs(groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end
	vim.api.nvim_create_autocmd({ "OptionSet" }, {
		pattern = "background",
		callback = function()
			M.setup()
		end,
	})
	terminal_util.set_terminal_colors(colors)
end

return M
