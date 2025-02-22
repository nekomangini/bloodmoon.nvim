local M = {}

local function set_globals()
	vim.g.terminal_color_0 = "#000000"
	vim.g.terminal_color_1 = "#941B4B"
	vim.g.terminal_color_2 = "#905D8C"
	vim.g.terminal_color_3 = "#4E1A3D"
	vim.g.terminal_color_4 = "#5A3D5E"
	vim.g.terminal_color_5 = "#BCA6BC"
	vim.g.terminal_color_6 = "#311736"
	vim.g.terminal_color_7 = "#231228"
	vim.g.terminal_color_8 = "#000007"
	vim.g.terminal_color_9 = "#941B4B"
	vim.g.terminal_color_10 = "#905D8C"
	vim.g.terminal_color_11 = "#4E1A3D"
	vim.g.terminal_color_12 = "#5A3D5E"
	vim.g.terminal_color_13 = "#BCA6BC"
	vim.g.terminal_color_14 = "#311736"
	vim.g.terminal_color_15 = "#231228"
	vim.g.terminal_color_background = "#000000"
	vim.g.terminal_color_foreground = "#941B4B"
end

local function set_hl_groups()
	local hl = vim.api.nvim_set_hl

	hl(0, "Normal", { fg = "#941B4B", bg = "#000000" })
	hl(0, "Cursor", { fg = "#000000", bg = "#941B4B" })
	hl(0, "LineNr", { fg = "#5A3D5E", bg = "#000000" })
	hl(0, "CursorLine", { fg = "NONE", bg = "#231228" })
	hl(0, "Visual", { fg = "NONE", bg = "#4E1A3D" })

	hl(0, "Comment", { fg = "#5A3D5E", italic = true })
	hl(0, "String", { fg = "#4E1A3D", bg = "NONE" })
	hl(0, "Keyword", { fg = "#905D8C", bold = true })
	hl(0, "Function", { fg = "#905D8C", bold = true })
	hl(0, "Identifier", { fg = "#941B4B", bg = "NONE" })
	hl(0, "Number", { fg = "#905D8C", bg = "NONE" })
	hl(0, "Type", { fg = "#905D8C", bold = true })
	hl(0, "Statement", { fg = "#905D8C", bold = true })
	hl(0, "Constant", { fg = "#941B4B", bg = "NONE" })
	hl(0, "Special", { fg = "#4E1A3D", bg = "NONE" })

	hl(0, "StatusLine", { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "StatusLineNC", { fg = "#5A3D5E", bg = "#311736" })
	hl(0, "VertSplit", { fg = "#231228", bg = "#000000" })
	hl(0, "TabLine", { fg = "#5A3D5E", bg = "#311736" })
	hl(0, "TabLineSel", { fg = "#905D8C", bg = "#000000" })
	hl(0, "TabLineFill", { fg = "NONE", bg = "#311736" })
	hl(0, "Pmenu", { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "PmenuSel", { fg = "#000000", bg = "#905D8C" })

	hl(0, "ColorColumn", { fg = "NONE", bg = "#231228" })
	hl(0, "CursorLineNr", { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "NonText", { fg = "#5A3D5E", bg = "NONE" })
	hl(0, "MatchParen", { fg = "#BCA6BC", bg = "#4E1A3D" })
	hl(0, "Search", { fg = "#000000", bg = "#905D8C" })
	hl(0, "IncSearch", { fg = "#000000", bg = "#BCA6BC" })

	hl(0, "TelescopeNormal", { fg = "#941B4B", bg = "#000000" })
	hl(0, "TelescopeBorder", { fg = "#5A3D5E", bg = "#000000" })
	hl(0, "TelescopePrompt", { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "TelescopePromptBorder", { fg = "#5A3D5E", bg = "#311736" })
	hl(0, "TelescopePromptPrefix", { fg = "#905D8C", bg = "#311736" })
	hl(0, "TelescopePromptCounter", { fg = "#5A3D5E", bg = "#311736" })
	hl(0, "TelescopeResults", { fg = "#941B4B", bg = "#000000" })
	hl(0, "TelescopeResultsBorder", { fg = "#5A3D5E", bg = "#000000" })
	hl(0, "TelescopePreview", { fg = "#941B4B", bg = "#231228" })
	hl(0, "TelescopePreviewBorder", { fg = "#5A3D5E", bg = "#231228" })
	hl(0, "TelescopeMatching", { fg = "#BCA6BC", bg = "#4E1A3D", bold = true })
	hl(0, "TelescopeSelection", { fg = "#000000", bg = "#905D8C" })
	hl(0, "TelescopeTitle", { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "TelescopePromptTitle", { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "TelescopeResultsTitle", { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "TelescopePreviewTitle", { fg = "#BCA6BC", bg = "#311736" })
end

function M.init()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "bloodmoon"

	set_globals()
	set_hl_groups()
end

return M
