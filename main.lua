jit.off()
love.graphics.setDefaultFilter("nearest", "nearest")
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
	local f = Keypressed_States[Gamestate]
	if f then f(key) end
end

function love.draw()
	Draw_Sfx()
	local f = Draw_States[Gamestate]
	if f then f() end
end

function love.mousepressed(x, y, button)
	local f = Mousepressed_States[Gamestate]
	if f then f(x,y,button) end
end
