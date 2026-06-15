--// Cyberpunk Neon Theme
local freeze, color = table.freeze, Color3.fromHex

local Colors = freeze({
	Background = color("#0D0E15"),
	Text = color("#E0E0E0"),
	Comments = color("#5A5A7A"),
	Keywords = color("#FF007F"),
	Functions = color("#00F0FF"),
	Strings = color("#FFEE00"),
	NumbersAndBools = color("#B800FF"),
	OperatorsAndBrackets = color("#E0E0E0"),
	Selection = color("#202246"),
	CurrentLine = color("#141624"),
	DiagnosticsError = color("#FF003C"),
	DiagnosticsWarning = color("#FF8A00"),
	ScrollbarHandle = color("#333762")
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