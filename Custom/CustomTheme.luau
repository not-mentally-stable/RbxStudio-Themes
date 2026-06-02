--[[
	this is a simple version of applying themes
	use this template to make custom themes!
]]--

local Studio = settings():GetService("Studio")
local color = Color3.fromHex --// it doesn't have to be Hex btw Color3.new is also okey or other

local Custom = Enum.StudioScriptEditorColorPresets.Custom

if Studio["Script Editor Color Preset"] ~= Custom then
	Studio["Script Editor Color Preset"] = Custom
end

--// themes table. feel free to add extra!
local Themes = table.freeze({
	Background = color("#121215"),
	Text = color("#E1E4E8"),
	Comments = color("#6B737C"),
	Keywords = color("#66A3FF"),
	Functions = color("#FF8FBB"),
	Strings = color("#8DE6A4"),
	NumbersAndBools = color("#BCAAFE"),
	OperatorsAndBrackets = color("#E1E4E8"),
	Selection = color("#2C313A"),
	CurrentLine = color("#1A1A1E"),
	DiagnosticsError = color("#F14C4C"),
	DiagnosticsWarning = color("#CCA700"),
	ScrollbarHandle = color("#414141")
})

--// properties of [Studio] - https://create.roblox.com/docs/reference/engine/classes/Studio
local PropertyMap = table.freeze({
	--// Base Editor Colors
	["Background Color"] = Themes.Background,
	["Text Color"] = Themes.Text,
	["Current Line Highlight Color"] = Themes.CurrentLine,
	["Selection Color"] = Themes.Text,
	["Selection Background Color"] = Themes.Selection,
	["Find Selection Background Color"] = Themes.Selection,
	["Matching Word Background Color"] = Themes.Selection,
	["Whitespace Color"] = Themes.Selection,
	
	--// Keywords & Types
	["Keyword Color"] = Themes.Keywords,
	["Luau Keyword Color"] = Themes.Keywords,
	['"function" Color'] = Themes.Keywords,
	['"local" Color'] = Themes.Keywords,
	["TypeColor"] = Themes.Keywords,
	
	--// Functions
	["Function Name Color"] = Themes.Functions,
	["Built-in Function Color"] = Themes.Functions,
	["Method Color"] = Themes.Functions,
	
	--// Variables & Literals
	["Property Color"] = Themes.Text,
	["String Color"] = Themes.Strings,
	["Number Color"] = Themes.NumbersAndBools,
	["Bool Color"] = Themes.NumbersAndBools,
	['"nil" Color'] = Themes.NumbersAndBools,
	['"self" Color'] = Themes.NumbersAndBools,
	
	--// Comments & Misc Text
	["Comment Color"] = Themes.Comments,
	['"TODO" Color'] = Themes.Comments,
	
	--// Symbols
	["Operator Color"] = Themes.OperatorsAndBrackets,
	["Bracket Color"] = Themes.OperatorsAndBrackets,
	
	--// UI Elements & Rulers
	["Ruler Color"] = Themes.Comments,
	["Script Editor Scrollbar Background Color"] = Themes.Background,
	["Script Editor Scrollbar Handle Color"] = Themes.ScrollbarHandle,
	
	--// Autocomplete Menus
	["Menu Item Background Color"] = Themes.Background,
	["Selection Background Color"] = Themes.Selection,
	["Primary Text Color"] = Themes.Text,
	["Secondary Text Color"] = Themes.Comments,
	["Selected Text Color"] = Themes.Text,
	
	--// Diagnostics & Debugger
	["Error Color"] = Themes.DiagnosticsError,
	["Warning Color"] = Themes.DiagnosticsWarning,
	["InformationColor"] = Themes.Keywords,
	["HintColor"] = Themes.Keywords,
	["Debugger Current Line Color"] = Themes.Selection,
	["Debugger Error Line Color"] = Themes.DiagnosticsError,
})

for PropsName, Color in PropertyMap do
	local success, err = pcall(function()
		Studio[PropsName] = Color
	end)
	
	if not success then
		warn(`Failed to apply color for "{PropsName}": {err}`)
	end
end

print("custom theme applied successfully! ✨️")
