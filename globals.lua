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
	["Cutscene"] = function ()
		love.graphics.setBackgroundColor(255/255,50/255,255/255)
		local img = Image.get("back")
		love.graphics.draw(img,0,0)
		love.graphics.print({{0,0,0},"Text"},55,345)
	end,
	["Dialouge"] = Dialogue.Draw,
}


function Error_Update(dt)
	Gamestate = "Intro"
end
