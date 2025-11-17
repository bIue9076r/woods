-- settings state

function Settings_Load()
	
end

function Settings_Update(dt)
	local x = love.mouse.getX()
	local y = love.mouse.getY()
	
end

function Settings_Mousepressed(x,y,button)
	local sound = Sound.get("Nope")
	

	sound:setVolume(0.125 * SFX_Volume)
	sound:seek(0)
	sound:play()
end

function Settings_Keypressed(key)
	local back_sound = Sound.get("Sett")
	back_sound:seek(0)
	back_sound:stop()
	Gamestate = "Intro"
end

function Settings_Draw()
	local back_sound = Sound.get("Sett")
	if back_sound and not (back_sound:isPlaying()) then
		back_sound:setVolume(Music_Volume)
		back_sound:seek(0)
		back_sound:play()
	end

	local img = Image.get("Abstract")
	love.graphics.draw(img,0,0)

	--Rt = Rt or 1
	--Rt = Rt - 5 * love.timer.getDelta()
	--love.graphics.print({{0,0,0},"Title!"},350 + 10*math.cos(Rt/4),100 + 10*math.sin(-Rt/6),0,2)
end
