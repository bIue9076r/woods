Dialogue = require("dialogue")
require("globals")

function love.load()
	
end

function love.update(dt)
	local f = Update_States[Gamestate] or Error_Update
	f(dt)
end

function love.keypressed(key)
	if key == 'space' then 
		Gamestate = "Cutscene"
	end
	local f = Keypressed_States[Gamestate]
	if f then f(key) end
end

function love.draw()
	local f = Draw_States[Gamestate]
	if f then f() end
end

function love.mousepressed(x, y, button)
	local f = Mousepressed_States[Gamestate]
	if f then f(x,y,button) end
end
