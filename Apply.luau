local Studio = settings():GetService("Studio")
local HttpService = game:GetService("HttpService")

if not HttpService.HttpEnabled then
   HttpService.HttpEnabled = true
end

local THEME = "LuauPlayground" --// put your theme name here!

local GithubUrl = "https://raw.githubusercontent.com/not-mentally-stable/RbxStudio-Themes/refs/heads/main/Themes/"..THEME..".luau"
local success, themedata = pcall(HttpService.GetAsync, HttpService, GithubUrl)
if not success then
   warn("Sadly failed to apply theme. reason: ".. ThemeData)
   return
end

local Custom = Enum.StudioScriptEditorColorPresets.Custom
if Studio["Script Editor Color Preset"] ~= Custom then
   Studio["Script Editor Color Preset"] = Custom
end

for Props, Color in themedata do
    local success, err = pcall(function()
		Studio[Props] = Color
	end)
	
	if not success then
		warn(`Failed to apply color for "{PropsName}": {err}`)
	end
end

print("theme applied successfully! ✨️", "git: https://github.com/not-mentally-stable/RbxStudio-Themes/")
