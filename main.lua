jit.off()
love.graphics.setDefaultFilter("nearest", "nearest")
Dialogue = require("dialogue")
Compatibility = require("compatibility")
Timer = require("Timer")
require("globals")

function love.load()
	
end

function love.update(dt)
	local f = Update_States[Gamestate] or Error_Update
	if Timer.started then
		Timer.update(dt)
	end
	f(dt)
end

function love.keypressed(key)
	-- start the game with space 
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
	-- click on choice code here? or in specific states 
	local f = Mousepressed_States[Gamestate]
	if f then f(x,y,button) end
end
