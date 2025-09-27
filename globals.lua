require("assets")
require("Assets/defines")
Gamestate = "Intro" -- Main Menu

Load_States = {
	["Intro"] = function() end,
	["Cutscene"] = function() end,
	["Dialouge"] = nil,
	["End"] = function () end,
}

Update_States = {
	["Intro"] = function(dt) end,
	["Cutscene"] = function (dt) end,
	["Dialouge"] = Dialogue.Updating,
	["End"] = function (dt) end,
}

Mousepressed_States = {
	["Intro"] = function(x,y,button) end,
	["Cutscene"] = function (x,y,button) end,
	["Dialouge"] = nil,
	["End"] = function (x,y,button) end,
}

Keypressed_States = {
	["Intro"] = function(key) end,
	["Cutscene"] = function (key) end,
	["Dialouge"] = Dialogue.Keypressed,
	["End"] = function (key) end,
}

Draw_States = {
	["Intro"] = function() end,
	["Cutscene"] = function ()
		love.graphics.setBackgroundColor(255/255,50/255,255/255)
		local img = Image.get("Textbox")
		love.graphics.draw(img,0,0)
		local x = love.mouse.getX()
		local y = love.mouse.getY()
		print(x,y)
		love.graphics.print({{0,0,0},"Text"},x,y)
	end,
	["Dialouge"] = Dialogue.Draw,
	["End"] = function () end,
}


function Error_Update(dt)
	Gamestate = "Intro"
end
