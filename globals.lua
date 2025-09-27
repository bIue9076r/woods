require("assets")
require("Assets/defines")
Gamestate = "Intro"

Load_States = {
	["Intro"] = function() end,
	["Cutscene"] = function() end,
	["Dialouge"] = nil,
}

Update_States = {
	["Intro"] = function(dt) end,
	["Cutscene"] = function (dt) end,
	["Dialouge"] = Dialogue.Updating,
}

Mousepressed_States = {
	["Intro"] = function(x,y,button) end,
	["Cutscene"] = function (x,y,button) end,
	["Dialouge"] = nil,
}

Keypressed_States = {
	["Intro"] = function(key) end,
	["Cutscene"] = function (key) end,
	["Dialouge"] = Dialogue.Keypressed,
}

Draw_States = {
	["Intro"] = function() end,
	["Cutscene"] = function () end,
	["Dialouge"] = Dialogue.Draw,
}


function Error_Update(dt)
	Gamestate = "Intro"
end
