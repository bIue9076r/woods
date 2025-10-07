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

	local entry = Dialogue.Get(Dialogue.index) -- gets current dialogue line
	local _entry = Dialogue.tree:get()
	if _entry and not _Once then
		print(_entry.string)
		print(_entry.char)
		print(_entry.mood)
		print(_entry.sfx)
		_Once = true
	end

	if entry then
		local img
		img = Image.get("Inside_Background_"..entry.name)
		love.graphics.draw(img,0,0)

		img = Image.get(entry.name.."_"..entry.mood)
		love.graphics.draw(img,0,0)

		love.graphics.setColor(1,1,1,0.8)
		img = Image.get("Textbox")
		love.graphics.draw(img,0,0)
		love.graphics.setColor(1,1,1)

		local c = Colors[entry.name] or {0,0,0}
		love.graphics.print({c,entry.name}, 98, 321)
		love.graphics.printf({{0,0,0},entry.text}, 93, 365, 429, "left")
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
		local entry = Dialogue.Get(Dialogue.index)
		local _entry = Dialogue.tree:get()
		_Once = false
		if _entry then
			local r = Dialogue.tree:next()
			print("Mouse",r)
		end

		if not entry.dialogue then
			Gamestate = "Response"
			Response.Load()
		else
			Dialogue.index = entry.next
		end
	end
end

-- handles key input
function Dialogue.Keypressed(key)
	local entry = Dialogue.Get(Dialogue.index)
	local _entry = Dialogue.tree:get()
	_Once = false
	if _entry then
		local r = Dialogue.tree:next()
		print("Key",r)
	end

	if key == "space" then
		if not entry.dialogue then
			Gamestate = "Response"
			Response.Load()
		else
			Dialogue.index = entry.next
		end
	end
end
