jit.off()
love.graphics.setDefaultFilter("nearest", "nearest")
require("globals")

function love.load()
	Gamestate = "End"
end

function love.update(dt)
	local f = Update_States[Gamestate] or Error_Update
	if Timer.started then
		Timer.update(dt)
	end
	f(dt)
	if dt < (1/30) then
		love.timer.sleep(1/30 - dt)
	end

	if Timer.global < 300 then
		if not((Gamestate == "Intro") or (Gamestate == "Cutscene") or (Gamestate == "End")) then
			Timer.show = true
			Timer.global = Timer.global + dt
		end
	else
		Gamestate = "End"
	end
end

function love.keypressed(key)
	local f = Keypressed_States[Gamestate]
	if f then f(key) end
end

function love.draw()
	Draw_Sfx()
	local f = Draw_States[Gamestate]
	if f then f() end
	
	if Timer.show then
		local Tg = math.ceil(300 - Timer.global)
		local s = Tg % 60
		if s < 10 then s = "0"..s end
		local m = math.floor(Tg / 60) % 60
		love.graphics.print({{0,0,0},m..":"..s},10,10,0,1.5,1.5)
	end
end

function love.mousepressed(x, y, button)
	local f = Mousepressed_States[Gamestate]
	if f then f(x,y,button) end
end
