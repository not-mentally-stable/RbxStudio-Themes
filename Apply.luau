local Studio = settings():GetService("Studio")
local HttpService = game:GetService("HttpService")

if not HttpService.HttpEnabled then
   HttpService.HttpEnabled = true
end

local THEME = "LuauPlayground" --// put your theme name here!!

---// loader
local GithubUrl = "https://raw.githubusercontent.com/not-mentally-stable/RbxStudio-Themes/refs/heads/main/Themes/"..THEME..".luau"
local success, rawdata = pcall(HttpService.GetAsync, HttpService, GithubUrl)
if not success then
   warn("Sadly failed to fetch theme. reason: ".. rawdata)
   return
end

local loader, str = loadstring(rawdata)
if not loader then
   warn("failed to compile theme? reason: ".. str)
   return
end 
local bool, themedata = pcall(loader)
if not bool then
   warn("failed to execute theme? reason: ".. themedata)
   return
end

local Custom = Enum.StudioScriptEditorColorPresets.Custom
if Studio["Script Editor Color Preset"] ~= Custom then
   Studio["Script Editor Color Preset"] = Custom
end

for Props, Color in themedata do
    -- task.wait(1) if the lag is too bad on your device or you crash please yield. 3-5s is recommended
    local success, err = pcall(function()
		Studio[Props] = Color
	end)
	
	if not success then
		warn(`Failed to apply color for "{Props}": {err}`)
	end
end

print("theme applied successfully! ✨️", "git: https://github.com/not-mentally-stable/RbxStudio-Themes/")
