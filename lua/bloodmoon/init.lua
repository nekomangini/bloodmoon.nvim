local M = {}

local palette = {
	bg      = "#000000",
	fg      = "#BCA6BC",
	accent  = "#905D8C",
	accent2 = "#4E1A3D",
	subtle  = "#5A3D5E",
	ui      = "#311736",
	ui2     = "#231228",
	error   = "#941B4B",
}

-- Set terminal colors (mapped to the palette)
local function set_globals()
	vim.g.terminal_color_0          = palette.bg
	vim.g.terminal_color_1          = palette.error
	vim.g.terminal_color_2          = palette.accent
	vim.g.terminal_color_3          = palette.accent2
	vim.g.terminal_color_4          = palette.subtle
	vim.g.terminal_color_5          = palette.fg
	vim.g.terminal_color_6          = palette.ui
	vim.g.terminal_color_7          = palette.ui2
	vim.g.terminal_color_8          = "#000007"
	vim.g.terminal_color_9          = palette.error
	vim.g.terminal_color_10         = palette.accent
	vim.g.terminal_color_11         = palette.accent2
	vim.g.terminal_color_12         = palette.subtle
	vim.g.terminal_color_13         = palette.fg
	vim.g.terminal_color_14         = palette.ui
	vim.g.terminal_color_15         = palette.ui2
	vim.g.terminal_color_background = palette.bg
	vim.g.terminal_color_foreground = palette.error
end

-- Set highlight groups using palette and semantic roles
local function set_hl_groups()
	local hl = vim.api.nvim_set_hl

	-- Basic highlight groups
	hl(0, "Normal",     { fg = palette.fg,     bg = palette.bg })
	hl(0, "Cursor",     { fg = palette.bg,     bg = palette.error })
	hl(0, "LineNr",     { fg = palette.subtle, bg = palette.bg, italic = true })
	hl(0, "CursorLine", { bg = palette.ui2 })
	hl(0, "Visual",     { bg = palette.accent2 })

	-- Syntax highlighting groups
	hl(0, "Comment",    { fg = palette.subtle, italic = true })
	hl(0, "String",     { fg = palette.accent2 })
	hl(0, "Keyword",    { fg = palette.accent, bold = true })
	hl(0, "Function",   { fg = palette.accent, bold = true })
	hl(0, "Identifier", { fg = palette.fg })
	hl(0, "Number",     { fg = palette.accent })
	hl(0, "Type",       { fg = "#905D8C", bold = true })
	hl(0, "Statement",  { fg = "#905D8C", bold = true })
	hl(0, "Constant",   { fg = "#BCA6BC", bg = "NONE", bold = true })
	hl(0, "Special",    { fg = "#4E1A3D", bg = "NONE" })

	-- UI elements
	hl(0, "StatusLine",   { fg = "#BCA6BC", bg = "#311736", bold = true })
	hl(0, "StatusLineNC", { fg = "#5A3D5E", bg = "#311736" })
	hl(0, "VertSplit",    { fg = "#231228", bg = "#000000" })
	hl(0, "TabLine",      { fg = "#BCA6BC", bg = "#311736", bold = true })
	hl(0, "TabLineSel",   { fg = "#905D8C", bg = "#000000", bold = true, underline = true })
	hl(0, "TabLineFill",  { fg = "NONE", bg = "#311736" })
	hl(0, "Pmenu",        { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "PmenuSel",     { fg = "#000000", bg = "#905D8C", bold = true, underline = true })

	-- Additional common groups
	hl(0, "ColorColumn",  { fg = "NONE",    bg = "#231228" })
	hl(0, "CursorLineNr", { fg = "#BCA6BC", bg = "#311736", bold = true })
	hl(0, "NonText",      { fg = "#5A3D5E", bg = "NONE" })
	hl(0, "MatchParen",   { fg = "#BCA6BC", bg = "#4E1A3D", bold = true, underline = true })
	hl(0, "Search",       { fg = "#000000", bg = "#905D8C", bold = true, underline = true })
	hl(0, "IncSearch",    { fg = "#000000", bg = "#BCA6BC", bold = true })

	-- Telescope-specific highlight groups
	hl(0, "TelescopeNormal",        { fg = "#941B4B", bg = "#000000" })
	hl(0, "TelescopeBorder",        { fg = "#5A3D5E", bg = "#000000" })
	hl(0, "TelescopePrompt",        { fg = "#BCA6BC", bg = "#311736" })
	hl(0, "TelescopePromptBorder",  { fg = "#5A3D5E", bg = "#311736" })
	hl(0, "TelescopePromptPrefix",  { fg = "#905D8C", bg = "#311736" })
	hl(0, "TelescopePromptCounter", { fg = "#5A3D5E", bg = "#311736" })
	hl(0, "TelescopeResults",       { fg = "#941B4B", bg = "#000000" })
	hl(0, "TelescopeResultsBorder", { fg = "#5A3D5E", bg = "#000000" })
	hl(0, "TelescopePreview",       { fg = "#941B4B", bg = "#231228" })
	hl(0, "TelescopePreviewBorder", { fg = "#5A3D5E", bg = "#231228" })
	hl(0, "TelescopeMatching",      { fg = "#BCA6BC", bg = "#4E1A3D", bold = true, underline = true })
	hl(0, "TelescopeSelection",     { fg = "#000000", bg = "#905D8C", bold = true, underline = true })
	hl(0, "TelescopeTitle",         { fg = "#BCA6BC", bg = "#311736", bold = true })
	hl(0, "TelescopePromptTitle",   { fg = "#BCA6BC", bg = "#311736", bold = true })
	hl(0, "TelescopeResultsTitle",  { fg = "#BCA6BC", bg = "#311736", bold = true })
	hl(0, "TelescopePreviewTitle",  { fg = "#BCA6BC", bg = "#311736", bold = true })
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
