-- Highlight group definitions for slack.nvim
local util = require("slack.util")
local colors_util = require("slack.colors")

local M = {}

function M.create_groups(colors)
	local darken = util.darken
	return {
		-- Editor highlight groups
		ColorColumn = { bg = colors.bg_light },
		CursorLine = { bg = colors.bg },
		Cursor = { fg = colors.bg_dark, bg = colors.yellow },
		Directory = { fg = colors.blue, bold = true },
		DiffAdd = { fg = colors.green },
		DiffChange = { fg = colors.yellow },
		DiffDelete = { fg = colors.red },
		DiffText = { fg = colors.blue },
		EndOfBuffer = { bg = colors.bg_dark, fg = colors.bg_dark },
		ErrorMsg = { fg = colors.red, bold = true },
		VertSplit = { bg = colors.bg_dark, fg = colors.bg },
		Folded = { fg = colors.fg_dark, italic = true },
		FoldColumn = { fg = colors.yellow },
		SignColumn = { fg = colors.yellow },
		IncSearch = { bg = colors.yellow, fg = colors.bg },
		Substitute = { bg = colors.blue, fg = colors.bg },
		LineNr = { fg = colors.fg_dark },
		CursorLineNr = { fg = colors.fg },
		MatchParen = { fg = colors.cyan, bold = true },
		Normal = { fg = colors.fg_light, bg = colors.bg_dark },
		NormalFloat = { bg = colors.bg_dark },
		FloatBorder = { fg = colors.bg_light },
		FloatTitle = { bg = colors.bg_dark, fg = colors.fg_light },
		-- Menu/popup highlights using base colors
		Pmenu = { bg = colors.bg, fg = colors.fg_light },
		PmenuSel = { bg = colors.bg_lighter, fg = colors.fg_lighter, bold = true },
		PmenuSbar = { bg = colors.bg },
		PmenuThumb = { bg = colors.bg_lighter },
		Search = { bg = colors.bg },
		SpecialKey = { bg = colors.bg_light },
		SpellBad = { undercurl = true, sp = colors.red },
		SpellCap = { undercurl = true, sp = colors.yellow },
		SpellLocal = { undercurl = true, sp = colors.orange },
		SpellRare = { undercurl = true, sp = colors.blue },
		TabLine = { bg = colors.bg_dark, fg = colors.fg_light },
		TabLineFill = { bg = colors.bg_dark, fg = colors.fg_light },
		TabLineSel = { bg = colors.cyan, fg = colors.bg_dark, bold = true },
		Title = { fg = colors.green },
		Visual = { bg = colors.bg },
		VisualNOS = { bg = colors.bg },
		WarningMsg = { fg = colors.yellow, italic = true },
		Whitespace = { bg = colors.bg_dark },
		WinSeparator = { fg = colors.bg },
		WinBar = { bg = colors.bg_dark, fg = colors.fg },

		-- lsp
		DiagnosticError = { fg = colors.red, bold = true, bg = darken(colors.red, 0.1) },
		DiagnosticWarn = { fg = colors.orange, bold = true, bg = darken(colors.orange, 0.1) },
		DiagnosticInfo = { fg = colors.yellow, bold = true, bg = darken(colors.yellow, 0.1) },
		DiagnosticHint = { fg = colors.green, bold = true, bg = darken(colors.green, 0.1) },
		DiagnosticOk = { fg = colors.green_high, bold = true, bg = darken(colors.green_high, 0.1) },

		DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.orange },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.yellow },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.green },
		DiagnosticUnderlineOk = { undercurl = true, sp = colors.green_high },

		-- TODO: maybe implement this at some point, disable for now
		["@lsp.type.class"] = {},
		["@lsp.type.decorator"] = {},
		["@lsp.type.enum"] = {},
		["@lsp.type.enumMember"] = {},
		["@lsp.type.function"] = {},
		["@lsp.type.interface"] = {},
		["@lsp.type.macro"] = {},
		["@lsp.type.method"] = {},
		["@lsp.type.namespace"] = {},
		["@lsp.type.parameter"] = {},
		["@lsp.type.property"] = {},
		["@lsp.type.struct"] = {},
		["@lsp.type.type"] = {},
		["@lsp.type.typeParameter"] = {},
		["@lsp.type.variable"] = {},

		-- git highlighting
		gitcommitComment = { fg = colors.fg_dark, italic = true },
		gitcommitUntracked = { fg = colors.fg_dark, italic = true },
		gitcommitDiscarded = { fg = colors.fg_dark, italic = true },
		gitcommitSelected = { fg = colors.fg_dark, italic = true },
		gitcommitUnmerged = { fg = colors.green },
		gitcommitBranch = { fg = colors.purple },
		gitcommitNoBranch = { fg = colors.purple },
		gitcommitDiscardedType = { fg = colors.red },
		gitcommitSelectedType = { fg = colors.green },
		gitcommitUntrackedFile = { fg = colors.cyan },
		gitcommitDiscardedFile = { fg = colors.red },
		gitcommitDiscardedArrow = { fg = colors.red },
		gitcommitSelectedFile = { fg = colors.green },
		gitcommitSelectedArrow = { fg = colors.green },
		gitcommitUnmergedFile = { fg = colors.yellow },
		gitcommitUnmergedArrow = { fg = colors.yellow },
		gitcommitSummary = { fg = colors.fg_light },
		gitcommitOverflow = { fg = colors.red },
		gitcommitOnBranch = {},
		gitcommitHeader = {},
		gitcommitFile = {},

		-- User dependent groups, probably useless to change the default:
		Conceal = {},
		ModeMsg = {},
		MsgArea = {},
		MsgSeparator = {},
		MoreMsg = {},
		NonText = {},
		Question = {},
		QuickFixLine = {},
		StatusLine = {},
		StatusLineNC = {},
		WildMenu = {},

		-- Vim Default Code Syntax

		Comment = { fg = colors.fg_dark, italic = true },
		Constant = { fg = colors.cyan },
		String = { fg = colors.green },
		Character = { fg = colors.green, bold = true },
		Number = { fg = colors.orange },
		Float = { fg = colors.orange },
		Boolean = { fg = colors.orange },

		Identifier = { fg = colors.heavy_red },
		Function = { fg = colors.blue, italic = true },

		Statement = { fg = colors.blue_light, italic = true },
		Conditional = { fg = colors.blue, italic = true },
		Repeat = { fg = colors.blue, italic = true },
		Label = { fg = colors.blue, italic = true },
		Exception = { fg = colors.blue, italic = true },
		Operator = { fg = colors.blue },
		Keyword = { fg = colors.heavy_red },

		Include = { fg = colors.blue_light },
		Define = { fg = colors.purple },
		Macro = { fg = colors.purple },
		PreProc = { fg = colors.yellow },
		PreCondit = { fg = colors.yellow },

		Type = { fg = colors.yellow },
		StorageClass = { fg = colors.yellow },
		Structure = { fg = colors.yellow },
		Typedef = { fg = colors.yellow },

		Special = { fg = colors.blue },
		SpecialChar = {},
		Tag = { fg = colors.orange },
		SpecialComment = { fg = colors.fg_dark, bold = true },
		Debug = {},
		Delimiter = {},

		Ignore = {},
		Underlined = { underline = true },
		Error = { fg = colors.heavy_red },
		Todo = { fg = colors.purple, bold = true },

		-- Plugin Highlight Groups {{{
		GitGutterAdd = { fg = colors.green },
		GitGutterChange = { fg = colors.yellow },
		GitGutterDelete = { fg = colors.red },
		GitGutterChangeDelete = { fg = colors.orange },

		diffAdded = { fg = colors.green },
		diffRemoved = { fg = colors.heavy_red },

		["@punctuation.delimiter"] = { fg = colors.white },
		["@punctuation.bracket"] = { fg = colors.cyan_dark },
		["@punctuation.special"] = { fg = colors.cyan },

		["@constant"] = { fg = colors.yellow },
		["@constant.builtin"] = { fg = colors.orange },
		["@constant.macro"] = { fg = colors.yellow },

		["@string"] = { fg = colors.green },
		["@string.regexp"] = { fg = colors.cyan_dark },
		["@string.escape"] = { fg = colors.cyan_dark },

		["@number"] = { fg = colors.orange },
		["@boolean"] = { fg = colors.orange },
		["@number.float"] = { fg = colors.orange },

		["@function"] = { fg = colors.blue_light },
		["@function.call"] = { fg = colors.blue_light },
		["@function.builtin"] = { fg = colors.purple },
		["@function.macro"] = { fg = colors.orange },

		["@variable.parameter"] = { fg = colors.white },
		["@constructor"] = { fg = colors.yellow },

		["@function.method"] = { fg = colors.blue_light },
		["@function.method.call"] = { fg = colors.blue_light },

		["@variable.member"] = { fg = colors.blue_light },
		["@property"] = { fg = colors.blue_light },

		["@keyword.conditional"] = { fg = colors.blue, italic = true },
		["@keyword.repeat"] = { fg = colors.blue, italic = true },
		["@keyword.exception"] = { fg = colors.blue, italic = true },
		["@label"] = { fg = colors.cyan_dark, italic = true },
		["@keyword.debug"] = { fg = colors.cyan_dark, italic = true },
		["@keyword.import"] = { fg = colors.cyan_dark },
		["@module"] = { fg = colors.yellow },

		["@operator"] = { fg = colors.cyan },
		["@comment"] = { fg = colors.fg_dark, italic = true },

		["@keyword.directive"] = { fg = colors.yellow },
		["@keyword.directive.define"] = { fg = colors.purple },

		["@keyword"] = { fg = colors.blue },
		["@keyword.function"] = { fg = colors.blue_light },
		["@keyword.operator"] = { fg = colors.cyan },
		["@keyword.return"] = { fg = colors.blue },

		["@type"] = { fg = colors.yellow },
		["@type.builtin"] = { fg = colors.orange },
		["@type.definition"] = { fg = colors.blue },
		["@type.qualifier"] = { fg = colors.yellow },

		["@tag"] = { fg = colors.blue_light },
		["@tag.delimiter"] = { fg = colors.cyan },
		["@tag.attribute"] = { fg = colors.blue_light },

		["@string.special.symbol"] = { fg = colors.orange_light },
		["@variable"] = {},
		["@variable.builtin"] = { fg = colors.orange },

		["@markup.heading"] = { bold = true, underline = true },
		["@markup.link"] = { fg = colors.cyan },
		["@markup.link.url"] = { underline = true, fg = colors.green },
		["@string.special.url"] = { underline = true, fg = colors.green },
		["@markup.link.label"] = { fg = colors.cyan },
		["@markup.list"] = { fg = colors.cyan },
		["@comment.warning"] = { fg = colors.purple, bold = true },

		["@diff.plus"] = { bg = darken(colors.heavy_green, 0.3) },
		["@diff.minus"] = { bg = darken(colors.heavy_red, 0.3) },
		["@diff.delta"] = { bg = darken(colors.purple, 0.3) },

		-- nvim-cmp
		CmpItemAbbr = { fg = colors.white },
		CmpItemAbbrDeprecated = { fg = colors.red },
		CmpItemAbbrMatch = { fg = colors.white },
		CmpItemAbbrMatchFuzzy = { fg = colors.cyan },
		CmpItemKind = { fg = colors.cyan, bold = true },
		CmpItemMenu = { fg = colors.cyan },

		NeotestAdapterName = { fg = colors.blue_light },
		NeotestBorder = { fg = "#ffa000" },
		NeotestDir = { fg = colors.blue, bold = true },
		NeotestExpandMarker = { fg = colors.grey },
		NeotestFailed = { fg = colors.heavy_red },
		NeotestFile = { fg = colors.purple, bold = true, italic = true },
		NeotestFocused = { bold = true, underline = true },
		NeotestIndent = { fg = colors.grey },
		NeotestMarked = { fg = colors.green_high, bold = true, italic = true, underline = true },
		NeotestNamespace = { fg = colors.purple },
		NeotestPassed = { fg = colors.green_high },
		NeotestRunning = { fg = colors.yellow },
		NeotestWinSelect = { fg = "#0022ff" },
		NeotestSkipped = { fg = "#ff00ff" },
		NeotestTarget = { fg = "#00ffff" },
		NeotestTest = { fg = colors.green },
		NeotestUnknown = { fg = colors.grey, bold = true },

		NvimTreeLspDiagnosticsError = { fg = colors.red, bold = true },
		NvimTreeLspDiagnosticsWarning = { fg = colors.orange, bold = true },
		NvimTreeLspDiagnosticsInformation = { fg = colors.yellow, bold = true },
		NvimTreeLspDiagnosticsHint = { fg = colors.green, bold = true },

		NvimTreeFolderArrowClosed = { fg = colors.grey },
		NvimTreeFolderArrowOpen = { fg = colors.grey },
		NvimTreeRootFolder = { fg = colors.purple },
		NvimTreeSpecialFile = { fg = colors.yellow, bold = true, underline = true },
		NvimTreeExecFile = { fg = colors.green, bold = true },
		NvimTreeSymlink = { fg = colors.cyan, bold = true },

		NvimTreeGitDeletedIcon = { fg = colors.red },
		NvimTreeGitDirtyIcon = { fg = colors.red },
		NvimTreeGitRenamedIcon = { fg = colors.purple },
		NvimTreeGitNewIcon = { fg = colors.yellow },
		NvimTreeGitStagedIcon = { fg = colors.green },
		NvimTreeGitMergeIcon = { fg = colors.yellow },
		NvimTreeGitIgnoredIcon = { fg = colors.grey },

		GitSignsAdd = { fg = colors.green_high },
		GitSignsChange = { fg = colors.orange_light },
		GitSignsDelete = { fg = colors.heavy_red },
		GitSignsTopDelete = { fg = colors.heavy_red },
		GitSignsChangeDelete = { fg = colors.yellow_light },
	}
end

return M
