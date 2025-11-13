-- Intro State
-- Start of the game / Main Menu

Button_1 = Button.new(50,300,143,59,"button")
Button_2 = Button.new(50,370,143,59,"quit")
--Button_3

function Intro_Load()
	
end

function Intro_Update(dt)
	local x = love.mouse.getX()
	local y = love.mouse.getY()
	
	Button_1:focus(x,y)
	Button_2:focus(x,y)
end

function Intro_Mousepressed(x,y,button)
	local sound = Sound.get("Nope")
	if Button_1:click(x,y,button) then
		Gamestate = "Cutscene"
		sound = Sound.get("Yeep")
	end

	if Button_2:click(x,y,button) then
		love.event.quit()
	end

	sound:setVolume(0.125 * SFX_Volume)
	sound:seek(0)
	sound:play()
end

function Intro_Keypressed(key)

end

function Intro_Draw()
	local back_sound = Sound.get("Back")
	if back_sound and not (back_sound:isPlaying()) then
		back_sound:setVolume(Music_Volume)
		back_sound:seek(0)
		back_sound:play()
	end

	local img = Image.get("Outside_Background")
	love.graphics.draw(img,0,0)

	--Rt = Rt or 1
	--Rt = Rt - 5 * love.timer.getDelta()
	--love.graphics.print({{0,0,0},"Title!"},350 + 10*math.cos(Rt/4),100 + 10*math.sin(-Rt/6),0,2)

	Button_1:draw()
	Button_2:draw()
end
