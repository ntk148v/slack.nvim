-- Terminal color setup for slack.nvim
local M = {}

function M.set_terminal_colors(colors)
	vim.api.nvim_set_var("terminal_color_0", colors.bg_dark)
	vim.api.nvim_set_var("terminal_color_1", colors.red)
	vim.api.nvim_set_var("terminal_color_2", colors.green)
	vim.api.nvim_set_var("terminal_color_3", colors.yellow)
	vim.api.nvim_set_var("terminal_color_4", colors.blue)
	vim.api.nvim_set_var("terminal_color_5", colors.purple)
	vim.api.nvim_set_var("terminal_color_6", colors.cyan)
	vim.api.nvim_set_var("terminal_color_7", colors.fg)
	vim.api.nvim_set_var("terminal_color_8", colors.grey)
	vim.api.nvim_set_var("terminal_color_9", colors.red)
	vim.api.nvim_set_var("terminal_color_10", colors.green)
	vim.api.nvim_set_var("terminal_color_11", colors.orange)
	vim.api.nvim_set_var("terminal_color_12", colors.blue)
	vim.api.nvim_set_var("terminal_color_13", colors.purple)
	vim.api.nvim_set_var("terminal_color_14", colors.cyan)
	vim.api.nvim_set_var("terminal_color_15", colors.white)
	vim.api.nvim_set_var("terminal_color_background", colors.bg_dark)
	vim.api.nvim_set_var("terminal_color_foreground", colors.fg_light)
end

return M
