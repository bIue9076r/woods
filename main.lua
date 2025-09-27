Dialogue = require("dialogue")
--Compatibility = require("compatibility") -- TODO: someone work on this module
--Timer = require("Timer") -- TODO: someone work on this module
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
