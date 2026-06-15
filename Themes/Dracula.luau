--// Dracula Theme
local freeze, color = table.freeze, Color3.fromHex

local Colors = freeze({
	Background = color("#282A36"),
	Text = color("#F8F8F2"),
	Comments = color("#6272A4"),
	Keywords = color("#FF79C6"),
	Functions = color("#50FA7B"),
	Strings = color("#F1FA8C"),
	NumbersAndBools = color("#BD93F9"),
	OperatorsAndBrackets = color("#FF79C6"),
	Selection = color("#44475A"),
	CurrentLine = color("#373A4B"),
	DiagnosticsError = color("#FF5555"),
	DiagnosticsWarning = color("#F1FA8C"),
	ScrollbarHandle = color("#6272A4")
})

return freeze({
	--// Base Editor Colors
	["Background Color"] = Colors.Background,
	["Text Color"] = Colors.Text,
	["Current Line Highlight Color"] = Colors.CurrentLine,
	["Selection Color"] = Colors.Text,
	["Selection Background Color"] = Colors.Selection,
	["Find Selection Background Color"] = Colors.Selection,
	["Matching Word Background Color"] = Colors.Selection,
	["Whitespace Color"] = Colors.Selection,
	
	--// Keywords & Types
	["Keyword Color"] = Colors.Keywords,
	["Luau Keyword Color"] = Colors.Keywords,
	['"function" Color'] = Colors.Keywords,
	['"local" Color'] = Colors.Keywords,
	["TypeColor"] = Colors.Keywords,
	
	--// Functions
	["Function Name Color"] = Colors.Functions,
	["Built-in Function Color"] = Colors.Functions,
	["Method Color"] = Colors.Functions,
	
	--// Variables & Literals
	["Property Color"] = Colors.Text,
	["String Color"] = Colors.Strings,
	["Number Color"] = Colors.NumbersAndBools,
	["Bool Color"] = Colors.NumbersAndBools,
	['"nil" Color'] = Colors.NumbersAndBools,
	['"self" Color'] = Colors.NumbersAndBools,
	
	--// Comments & Misc Text
	["Comment Color"] = Colors.Comments,
	['"TODO" Color'] = Colors.Comments,
	
	--// Symbols
	["Operator Color"] = Colors.OperatorsAndBrackets,
	["Bracket Color"] = Colors.OperatorsAndBrackets,
	
	--// UI Elements & Rulers
	["Ruler Color"] = Colors.Comments,
	["Script Editor Scrollbar Background Color"] = Colors.Background,
	["Script Editor Scrollbar Handle Color"] = Colors.ScrollbarHandle,
	
	--// Autocomplete Menus
	["Menu Item Background Color"] = Colors.Background,
	["Primary Text Color"] = Colors.Text,
	["Secondary Text Color"] = Colors.Comments,
	["Selected Text Color"] = Colors.Text,
	
	--// Diagnostics & Debugger
	["Error Color"] = Colors.DiagnosticsError,
	["Warning Color"] = Colors.DiagnosticsWarning,
	["InformationColor"] = Colors.Keywords,
	["HintColor"] = Colors.Keywords,
	["Debugger Current Line Color"] = Colors.Selection,
	["Debugger Error Line Color"] = Colors.DiagnosticsError,
})