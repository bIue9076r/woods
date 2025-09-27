require("assets")
require("Assets/defines")
Gamestate = "Intro"

Load_States = {
	["Intro"] = function() end,
	["Cutscene"] = function() end,
	["Dialouge"] = function() end, -- TODO: Use functions from dialouge.lua
}

Update_States = {
	["Intro"] = function(dt) end,
	["Cutscene"] = function (dt) end,
	["Dialouge"] = function(dt) end, -- TODO: Use functions from dialouge.lua
}

Keypressed_States = {
	["Intro"] = function(key) end,
	["Cutscene"] = function (key) end,
	["Dialouge"] = function(key) end, -- TODO: Use functions from dialouge.lua
}

Draw_States = {
	["Intro"] = function() end,
	["Cutscene"] = function () end,
	["Dialouge"] = function() end, -- TODO: Use functions from dialouge.lua
}


function Error_Update(dt)
	Gamestate = "Intro"
end
