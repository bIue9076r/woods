-- Cutscene State
-- Intro to the game with the chars talking to each other

Character = {
	Mood = 1,
	Char = "Lorelai",
	Color = Color_Lorelai,
	Text = "...",
}

T = 1
Tutorial = true
String = [[


Douglas and Lorelai are going on a quick coffee shop run together. Class is starting soon, and they don’t have much time to talk. Make decisions for both Doug and Lorelai, and see if you can get them together (or break them apart) in five minutes before you’re OUT OF TIME!


]]
Pause_hold = false
Blink_done = false

function Cutscene_Load()
	T = 1
end

function Cutscene_Update(dt)
	Pause_hold = love.mouse.isDown(1)
	if not Pause_hold and not Tutorial then
		T = T + (1 * dt)
	end
	
	local fT = math.floor(T)
	if fT == 1 then
		Character = {
			Mood = 1,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "..Hey.",
		}
	elseif fT == 4 then
		Character = {
			Mood = 1,
			Char = "Lorelai",
			Color = Color_Lorelai,
			Text = "Hey! Douglass, right?",
		}
	elseif fT == 7 then
		Character = {
			Mood = 1,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "Yeah.. Yeah it’s Doug.",
		}
	elseif fT == 9 then
		Character = {
			Mood = 1,
			Char = "Lorelai",
			Color = Color_Lorelai,
			Text = "Nice to finally meet you.",
		}
	elseif fT == 12 then
		Character = {
			Mood = 1,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "Yeah so uh, I've seen you a lot in some of my classes",
		}
	elseif fT == 14 then
		Character = {
			Mood = 2,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "And I've just.. always wanted to ask you out–",
		}
	elseif fT == 16 then
		Character = {
			Mood = 7,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "For coffee. I guess.",
		}
	elseif fT == 18 then
		Character = {
			Mood = 2,
			Char = "Lorelai",
			Color = Color_Lorelai,
			Text = "You're in my organic chem class, right? You sit in the back?",
		}
	elseif fT == 20 then
		Character = {
			Mood = 6,
			Char = "Douglass",
			Color = Color_Douglass,
			Text = "Yeah",
		}
	elseif fT == 22 then
		local back_sound = Sound.get("Back")
		back_sound:seek(0)
		back_sound:stop()
		Response.index = "Choice_1"
		Gamestate = "Response"
		Timer.init()
		Timer.started = true
	end
end

function Cutscene_Mousepressed(x,y,button)
	if Tutorial then
		Tutorial = false
		Play_Sfx("Yeep",0.125)
	else
		Play_Sfx("Nope",0.125)
	end
end

function Cutscene_Keypressed(key)
	if key == "return" then
		local back_sound = Sound.get("Back")
		back_sound:seek(0)
		back_sound:stop()
		Response.index = "Choice_1"
		Response.Branch = Choice_1
		Gamestate = "Response"
		Timer.init()
		Timer.started = true
	end
end

function Cutscene_Draw()
	local back_sound = Sound.get("Back")
	if back_sound and not (back_sound:isPlaying()) then
		back_sound:setVolume(Music_Volume)
		back_sound:seek(0)
		back_sound:play()
	end
	local img
	if not Tutorial then
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
	else
		img = Image.get("Outside_Background")
		love.graphics.draw(img,0,0)

		img = Image.get("Objective")
		love.graphics.draw(img,0,0)

		love.graphics.printf({{0,0,0},String}, 60, 60, 325, "left")
	end
end
