-- Intro State
-- Start of the game / Main Menu

Button_1 = Button.new(200,300,300,100)

function Intro_Load()
	
end

function Intro_Update(dt)
	local x = love.mouse.getX()
	local y = love.mouse.getY()
	
	Button_1:focus(x,y)
end

function Intro_Mousepressed(x,y,button)
	if Button:click(x,y,button) then
		Gamestate = "Cutscene"
	end
end

function Intro_Keypressed(key)

end

function Intro_Draw()
	local back_sound = Sound.get("Back")
	if back_sound and not (back_sound:isPlaying()) then
		back_sound:seek(0)
		back_sound:play()
	end

	local img = Image.get("Outside_Background")
	love.graphics.draw(img,0,0)

	love.graphics.print({{0,0,0},"Title!"},350,100)

	Button_1:draw()
end
