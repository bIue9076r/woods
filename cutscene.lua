-- Cutscene State
-- Intro to the game with the chars talking to each other

Character = {
	Mood = 1,
	Char = "Lorelai",
	Color = Color_Lorelai,
	Text = "...",
}

T = 1
Pause_hold = false
Blink_done = false

function Cutscene_Load()
	T = 1
end

function Cutscene_Update(dt)
	Pause_hold = love.mouse.isDown(1)
	if not Pause_hold then
		T = T + (1 * dt)
	end
	local fT = math.floor(T)

	if fT == 1 then
		DoBlink = true
		Character = {
			Mood = 1,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "Yeah so uh, I’ve seen you a lot in some of my classes",
		}
	elseif fT == 4 then
		Character = {
			Mood = 2,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "And I’ve just.. always wanted to ask you out–",
		}
	elseif fT == 7 then
		Character = {
			Mood = 7,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "For coffee. I guess.",
		}
	elseif fT == 9 then
		Character = {
			Mood = 2,
			Char = "Lorelai",
			Color = Color_Lorelai,
			Text = "You’re in my organic chem class, right? You sit in the back?",
		}
	elseif fT == 12 then
		Character = {
			Mood = 6,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "Yeah",
		}
	elseif fT == 14 then
		Response.index = "Doug1"
		Gamestate = "Response"
		Timer.init()
		Timer.started = true
	end
end

function Cutscene_Mousepressed(x,y,button)
	Play_Sfx("Nope",0.125)
end

function Cutscene_Keypressed(key)
	if key == "return" then
		Response.index = "Doug1"
		Gamestate = "Response"
		Timer.init()
		Timer.started = true
	end
end

function Cutscene_Draw()
	local img
	img = Image.get("Inside_Background_"..Character.Char)
	love.graphics.draw(img,0,0)

	img = Image.get(Character.Char.."_"..Character.Mood)
	love.graphics.draw(img,0,0)

	love.graphics.setColor(1,1,1,0.8)
	img = Image.get("Textbox")
	love.graphics.draw(img,0,0)
	love.graphics.setColor(1,1,1)
	love.graphics.print({Character.Color,Character.Char},95,320)

    love.graphics.printf({{0,0,0},Character.Text}, 93, 365, 429, "left")
end
