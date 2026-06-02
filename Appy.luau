local Studio = settings():GetService("Studio")
local HttpService = game:GetService("HttpService")

local THEME = "LuauPlayground" --// put your theme name here!

local GithubUrl = "https://raw.githubusercontent.com/not-mentally-stable/RbxStudio-Themes/refs/heads/main/Themes/"..THEME..".luau"
local bool, Themes = pcall(HttpService.GetAsync, HttpService, GithubUrl)
if not bool then
	warn("Sadly failed to apply theme. reason: ".. Themes)
	return
end

local Custom = Enum.StudioScriptEditorColorPresets.Custom
if Studio["Script Editor Color Preset"] ~= Custom then
	Studio["Script Editor Color Preset"] = Custom
end

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

print("theme applied successfully! ✨️", "git: https://github.com/not-mentally-stable/")
