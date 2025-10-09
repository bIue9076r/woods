Dialogue = {}
Dialogue.data = {} -- stores all dialogue entries
Dialogue.index = "Start"
Dialogue.ticks = 0

Dialogue.tree = Tree.new()

-- adds a new dialogue entry to the system
function Dialogue.New(index, name, mood, text, duration, next, dialogue)
	Dialogue.data[index] = {
		name = name or "", mood = mood or 1, text = text or "", duration = duration or 2, next = next or "", dialogue = dialogue or false
	}
end

-- returns dialogue entry at given index
-- used to fetch current dialogue line
function Dialogue.Get(index)
	return Dialogue.data[index]
end

function Dialogue.Load()
	
end

-- displays current dialogue line on screen
function Dialogue.Draw()
	local sound = Sound.get("cafe")
	if sound and not sound:isPlaying() then
		sound:seek(0)
		sound:play()
	end

	--local entry = Dialogue.Get(Dialogue.index) -- gets current dialogue line
	local entry = Dialogue.tree:get()

	if entry then
		local img
		img = Image.get("Inside_Background_"..entry.char)
		love.graphics.draw(img,0,0)

		img = Image.get(entry.char.."_"..entry.mood)
		love.graphics.draw(img,0,0)

		love.graphics.setColor(1,1,1,0.8)
		img = Image.get("Textbox")
		love.graphics.draw(img,0,0)
		love.graphics.setColor(1,1,1)

		local c = Colors[entry.char] or {0,0,0}
		love.graphics.print({c,entry.char}, 98, 321)
		love.graphics.printf({{0,0,0},entry.string}, 93, 365, 429, "left")
	else
		Gamestate = "End"
		local sound = Sound.get("cafe")
		if sound then
			sound:seek(0)
			sound:stop()
		end
	end
end

-- updating dialogue
function Dialogue.Updating(dt)
	
end

function Dialogue.Mousepressed(x,y,button)
	if button == 1 then
		--local entry = Dialogue.Get(Dialogue.index)

		local link = Dialogue.tree:next()
		if link then
			Gamestate = "Response"
			Response.Load()
		end
	end
end

-- handles key input
function Dialogue.Keypressed(key)
	--local entry = Dialogue.Get(Dialogue.index)

	if key == "space" then
		local link = Dialogue.tree:next()
		if link then
			Gamestate = "Response"
			Response.Load()
		end
	end
end
