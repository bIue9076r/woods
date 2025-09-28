local Response = {}
Response.data = {} -- stores all Response entries
Response.index = "Start"
Response.ticks = 0

Response.Choice_A = Button.new(100,350,200,62,"Dialogue_A",nil,nil,nil,nil,0,0,1.007)
Response.Choice_B = Button.new(100,412,200,62,"Dialogue_B",nil,nil,nil,nil,0,0,1.007)
Response.Choice_C = Button.new(300,350,200,62,"Dialogue_C",nil,nil,nil,nil,0,0,1.007)
Response.Choice_D = Button.new(300,412,200,62,"Dialogue_D",nil,nil,nil,nil,0,0,1.007)

Response.Choice_2A = Button.new(100,350,200,125,"2Box_Dialogue_A",nil,nil,nil,nil,0,0,1.007)
Response.Choice_2B = Button.new(300,350,200,125,"2Box_Dialogue_B",nil,nil,nil,nil,0,0,1.007)

function BadOption()
	Dialogue.index = "Start"
	Play_Sfx("Lorelai_What")
end

function Option_A()
	Timer.reset_choice()
	Play_Sfx("Lorelai_What")
	local f = Response.data[Response.index].nexts[1] or BadOption
	f()
	Gamestate = "Dialogue"
end

function Option_B()
	Timer.reset_choice()
	local f = Response.data[Response.index].nexts[2] or BadOption
	f()
	Gamestate = "Dialogue"
end

function Option_C()
	Timer.reset_choice()
	local f = Response.data[Response.index].nexts[3] or BadOption
	f()
	Gamestate = "Dialogue"
end

function Option_D()
	Timer.reset_choice()
	local f = Response.data[Response.index].nexts[4] or BadOption
	f()
	Gamestate = "Dialogue"
end

function NoResponse()
	local f = Response.data[Response.index].nexts[5] or Option_A
	f()
	Gamestate = "Dialogue"
end

-- adds a new Response entry to the system
-- char is character id
-- name is character name
-- text is the Response line
function Response.New(index, char, mood, type, texts, nexts)
	Response.data[index] = {
		char = char or "Lorelai", mood = mood or 1, type = type or 0, texts = texts or {}, nexts = nexts or {},
	}
end

-- returns Response entry at given index
-- used to fetch current Response line
function Response.Get(index)
	return Response.data[index]
end

function Response.Load()
	Response.index = Dialogue.data[Dialogue.index].next
end

-- displays current Response line on screen
function Response.Draw()
	local sound = Sound.get("cafe")
	if sound and not sound:isPlaying() then
		sound:seek(0)
		sound:play()
	end

	local entry = Response.Get(Response.index) -- gets current Response line

	if entry then
		local img
		img = Image.get("Inside_Background_"..entry.char)
		love.graphics.draw(img,0,0)

		img = Image.get(entry.char.."_"..Character.Mood)
		love.graphics.draw(img,0,0)

		local n = math.ceil(6 * (Timer.choice_time/15))
		img = Image.get("Timer_"..n)
		love.graphics.draw(img,0,0)

		if entry.type == 1 then
			local x,y = love.mouse.getPosition()

			Response.Choice_2A:draw()
			Response.Choice_2B:draw()

			love.graphics.printf({{0,0,0},entry.texts[1]}, 120, 370, 195, "left")
			love.graphics.printf({{0,0,0},entry.texts[2]}, 320, 370, 195, "left")
		else
			Response.Choice_A:draw()
			Response.Choice_B:draw()
			Response.Choice_C:draw()
			Response.Choice_D:draw()

			love.graphics.printf({{0,0,0},entry.texts[1]}, 125, 363, 165, "left")
			love.graphics.printf({{0,0,0},entry.texts[2]}, 125, 423, 165, "left")
			love.graphics.printf({{0,0,0},entry.texts[3]}, 325, 363, 165, "left")
			love.graphics.printf({{0,0,0},entry.texts[4]}, 325, 423, 165, "left")
		end
	end
end

-- updating Response
function Response.Updating(dt)
	Timer.update(dt)
	local entry = Response.Get(Response.index)
	local x,y = love.mouse.getPosition()
	if entry then
		if entry.type == 1 then
			Response.Choice_2A:focus(x,y)
			Response.Choice_2B:focus(x,y)
		else
			Response.Choice_A:focus(x,y)
			Response.Choice_B:focus(x,y)
			Response.Choice_C:focus(x,y)
			Response.Choice_D:focus(x,y)
		end
	end
end

-- handles key input
function Response.Keypressed(key)

end

function Response.Mousepressed(x,y,button)
	if Response.type == 1 then
		if Response.Choice_2A:click(x,y) then Option_A() end
		if Response.Choice_2B:click(x,y) then Option_B() end
	else
		if Response.Choice_A:click(x,y) then Option_A() end
		if Response.Choice_B:click(x,y) then Option_B() end
		if Response.Choice_C:click(x,y) then Option_C() end
		if Response.Choice_D:click(x,y) then Option_D() end
	end
end

return Response