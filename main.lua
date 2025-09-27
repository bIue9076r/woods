require("globals")
require("dialogue")

function love.load()
	local f = Load_States[Gamestate] or Error_Update
	f()
end

function love.update(dt)
	local f = Update_States[Gamestate] or Error_Update
	f(dt)
end

function love.keypressed(key)
	if key == 'space' then 
		Gamestate = "Cutscene"
	end
	local f = Keypressed_States[Gamestate] or Error_Update
	f(key)
end

function love.draw()
	local f = Draw_States[Gamestate] or Error_Update
	f()
end

function love.mousepressed(x, y, button, istouch)
   if button == 1 then
		Gamestate = "Dialouge"
		local f = Draw_States[Gamestate] or Error_Update
		f()
   end
end
