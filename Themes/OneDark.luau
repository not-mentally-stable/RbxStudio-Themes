--// One Dark Theme
local freeze, color = table.freeze, Color3.fromHex

local Colors = freeze({
	Background = color("#282C34"),
	Text = color("#ABB2BF"),
	Comments = color("#5C6370"),
	Keywords = color("#C678DD"),
	Functions = color("#61AFEF"),
	Strings = color("#98C379"),
	NumbersAndBools = color("#D19A66"),
	OperatorsAndBrackets = color("#ABB2BF"),
	Selection = color("#3E4451"),
	CurrentLine = color("#2C313C"),
	DiagnosticsError = color("#E06C75"),
	DiagnosticsWarning = color("#E5C07B"),
	ScrollbarHandle = color("#4B5363")
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