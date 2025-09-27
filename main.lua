

function love.load()
	
end

function love.update(dt)
	local f = Update_States[Gamestate] or function (dt) end
	if f then f(dt) end
end

function love.keypressed(key)
	local f = Keypressed_States[Gamestate] or function (key) end
	if f then f(key) end
end

function love.draw()
	local f = Draw_States[Gamestate] or function () end
	if f then f() end
end
