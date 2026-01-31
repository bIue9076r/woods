-- settings state

Option_V_U = Button.new(420,135,40,40,"Options_Volume_up_button",nil,nil,nil,nil,0,0,1.007)
Option_V_D = Button.new(475,135,40,40,"Options_Volume_down_button",nil,nil,nil,nil,0,0,1.007)
Option_S_U = Button.new(420,225,40,40,"Options_SFX_up_button",nil,nil,nil,nil,0,0,1.007)
Option_S_D = Button.new(475,225,40,40,"Options_SFX_down_button",nil,nil,nil,nil,0,0,1.007)
Option_T_U = Button.new(420,300,40,40,"Options_Timer_up_button",nil,nil,nil,nil,0,0,1.007)
Option_T_D = Button.new(475,300,40,40,"Options_Timer_down_button",nil,nil,nil,nil,0,0,1.007)

Option_Back = Button.new(415,365,110,35,"Options_button",nil,nil,nil,nil,0,0,1.007)

function Settings_Load()
	
end

function Settings_Update(dt)
	local x = love.mouse.getX()
	local y = love.mouse.getY()
	
	Option_S_U:focus(x,y)
	Option_S_D:focus(x,y)
	Option_T_U:focus(x,y)
	Option_T_D:focus(x,y)
	Option_V_U:focus(x,y)
	Option_V_D:focus(x,y)
	Option_Back:focus(x,y)
end

function Settings_Mousepressed(x,y,button)
	local sound = Sound.get("Nope")	

	if Option_S_U:click(x,y) then SFX_Volume = math.min(1,math.max(0,(math.floor(SFX_Volume * 10) + 1)/10)); sound = Sound.get("Yeep") end
	if Option_S_D:click(x,y) then SFX_Volume = math.min(1,math.max(0,(math.floor(SFX_Volume * 10) - 1)/10)); sound = Sound.get("Yeep") end
	if Option_T_U:click(x,y) then Timer.choice_max = math.min(14,math.max(3,Timer.choice_max + 1)); sound = Sound.get("Yeep"); Timer.global_max = math.ceil(Timer.choice_max * 42.8); end
	if Option_T_D:click(x,y) then Timer.choice_max = math.min(14,math.max(3,Timer.choice_max - 1)); sound = Sound.get("Yeep"); Timer.global_max = math.ceil(Timer.choice_max * 42.8); end
	if Option_V_U:click(x,y) then Main_Volume = math.min(1,math.max(0,(math.floor(Main_Volume * 10) + 1)/10)); sound = Sound.get("Yeep"); love.audio.setVolume(Main_Volume) end
	if Option_V_D:click(x,y) then Main_Volume = math.min(1,math.max(0,(math.floor(Main_Volume * 10) - 1)/10)); sound = Sound.get("Yeep"); love.audio.setVolume(Main_Volume) end

	if Option_Back:click(x,y) then
		local back_sound = Sound.get("Sett")
		back_sound:seek(0)
		back_sound:stop()
		Gamestate = "Intro"
	end

	sound:setVolume(0.125 * SFX_Volume)
	sound:seek(0)
	sound:play()
end

function Settings_Keypressed(key)
	if key == "m" then
		Main_Volume = 0
		love.audio.setVolume(Main_Volume)
	end
end

function Settings_Draw()
	local back_sound = Sound.get("Sett")
	if back_sound and not (back_sound:isPlaying()) then
		back_sound:setVolume(Music_Volume)
		back_sound:seek(0)
		back_sound:play()
	end

	local img = Image.get("Outside_Background")
	love.graphics.draw(img,0,0)
	img = Image.get("Options")
	love.graphics.draw(img,0,0)

	Option_S_U:draw()
	Option_S_D:draw()
	Option_T_U:draw()
	Option_T_D:draw()
	Option_V_U:draw()
	Option_V_D:draw()
	Option_Back:draw()

	local m = math.floor(Main_Volume * 10)
	local s = math.floor(SFX_Volume * 10)
	local t = Timer.choice_max

	img = Image.get("Options_Volume_"..m)
	love.graphics.draw(img,0,0)
	img = Image.get("Options_SFX_"..s)
	love.graphics.draw(img,0,0)
	img = Image.get("Options_Timer_"..t)
	love.graphics.draw(img,0,0)

	love.graphics.printf({{0,0,0},m},200,155,20,"center")
	love.graphics.printf({{0,0,0},s},200,235,20,"center")
	love.graphics.printf({{0,0,0},t},200,335,20,"center")
end
