Response = {}
Response.data = {} -- stores all Response entries
Response.index = "Start"
Response.ticks = 0

Response.spect = {
	["Lorelai"] = "Douglass",
	["Douglass"] = "Lorelai",
}

Response.Choice_A = Button.new(100,350,200,62,"Dialogue_A",nil,nil,nil,nil,0,0,1.007)
Response.Choice_B = Button.new(100,412,200,62,"Dialogue_B",nil,nil,nil,nil,0,0,1.007)
Response.Choice_C = Button.new(300,350,200,62,"Dialogue_C",nil,nil,nil,nil,0,0,1.007)
Response.Choice_D = Button.new(300,412,200,62,"Dialogue_D",nil,nil,nil,nil,0,0,1.007)

Response.Choice_2A = Button.new(100,350,200,125,"2Box_Dialogue_A",nil,nil,nil,nil,0,0,1.007)
Response.Choice_2B = Button.new(300,350,200,125,"2Box_Dialogue_B",nil,nil,nil,nil,0,0,1.007)

Response.Branch = Choice_1

function BadOption()
	--Dialogue.index = "Start"
	Dialogue.tree = "END"
	Play_Sfx("Lorelai_What")
end

function Option_A()
	local f = Response.Branch.options[1] or BadOption
	Gamestate = "Dialogue"
	Dialogue.tree = f()
	Timer.started = false
end

function Option_B()
	local f = Response.Branch.options[2] or BadOption
	Gamestate = "Dialogue"
	Dialogue.tree = f()
	Timer.started = false
end

function Option_C()
	local f = Response.Branch.options[3] or BadOption
	Gamestate = "Dialogue"
	Dialogue.tree = f()
	Timer.started = false
end

function Option_D()
	local f = Response.Branch.options[4] or BadOption
	Gamestate = "Dialogue"
	Dialogue.tree = f()
	Timer.started = false
end

function NoResponse()
	local f = Response.Branch.options[5] or Option_A
	Gamestate = "Dialogue"
	Dialogue.tree = f()
	Timer.started = false
end

function Response.New(index, char, mood, type, texts, nexts)
	Response.data[index] = {
		char = char or "Lorelai", mood = mood or 1, type = type or 0, texts = texts or {}, nexts = nexts or {},
	}
end

function Response.Get(index)
	if index == "END" then
		Timer.started = false
		local sound = Sound.get("cafe")
		if sound then
			sound:seek(0)
			sound:stop()
		end
		Gamestate = "End"
		return nil
	end
	return Response.data[index]
end

function Response.Load()
	Timer.started = true
	Timer.reset_choice()
	Response.Branch = Dialogue.tree.link
	if Response.Branch == "END" then
		Timer.started = false
		local sound = Sound.get("cafe")
		if sound then
			sound:seek(0)
			sound:stop()
		end
		Gamestate = "End"
	end
end

function Response.Draw()
	local sound = Sound.get("cafe")
	if sound and not sound:isPlaying() then
		sound:seek(0)
		sound:play()
	end

	--local entry = Response.Get(Response.index)
	local entry = Response.Branch

	if entry then
		local img
		img = Image.get("Inside_Background_"..entry.char)
		love.graphics.draw(img,0,0)

		img = Image.get(entry.char.."_"..entry.mood)
		love.graphics.draw(img,0,0)

		local n = math.ceil(6 * (Timer.choice_time/7))
		img = Image.get("Timer_"..n)
		love.graphics.draw(img,0,0)

		love.graphics.print({{0,0,0},"Playing as "..Response.spect[entry.char]},60,300)
		love.graphics.print({{1,1,1},"Playing as "..Response.spect[entry.char]},61,301)

		if entry.type == 1 then
			Response.Choice_2A:draw()
			Response.Choice_2B:draw()

			love.graphics.printf({{0,0,0},entry.strings[1]}, 120, 370, 195, "left")
			love.graphics.printf({{0,0,0},entry.strings[2]}, 320, 370, 195, "left")
		else
			Response.Choice_A:draw()
			Response.Choice_B:draw()
			Response.Choice_C:draw()
			Response.Choice_D:draw()

			love.graphics.printf({{0,0,0},entry.strings[1]}, 125, 363, 165, "left")
			love.graphics.printf({{0,0,0},entry.strings[2]}, 125, 423, 165, "left")
			love.graphics.printf({{0,0,0},entry.strings[3]}, 325, 363, 165, "left")
			love.graphics.printf({{0,0,0},entry.strings[4]}, 325, 423, 165, "left")
		end
	end
end

-- updating Response
function Response.Updating(dt)
	Timer.update(dt)
	--local entry = Response.Get(Response.index)
	local entry = Response.Branch
	
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
	if Response.data[Response.index].type == 1 then
		if Response.Choice_2A:click(x,y) then Option_A() end
		if Response.Choice_2B:click(x,y) then Option_B() end
	else
		if Response.Choice_A:click(x,y) then Option_A() end
		if Response.Choice_B:click(x,y) then Option_B() end
		if Response.Choice_C:click(x,y) then Option_C() end
		if Response.Choice_D:click(x,y) then Option_D() end
	end
end
