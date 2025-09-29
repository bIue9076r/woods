local Dialogue = {}
Dialogue.data = {} -- stores all dialogue entries
Dialogue.index = "Start"
Dialogue.ticks = 0

-- adds a new dialogue entry to the system
-- char is character id
-- name is character name
-- text is the dialogue line
function Dialogue.New(index, name, text, duration, next)
	Dialogue.data[index] = {
		name = name or "", text = text or "", duration = duration or 1, next = next or "Start",
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

	if entry then
		local img
		img = Image.get("Inside_Background_"..Character.Char)
		love.graphics.draw(img,0,0)

		img = Image.get(Character.Char.."_"..Character.Mood)
		love.graphics.draw(img,0,0)

		love.graphics.setColor(1,1,1,0.8)
		img = Image.get("Textbox")
		love.graphics.draw(img,0,0)
		love.graphics.setColor(1,1,1)

		local c = Colors[entry.name] or {0,0,0}
		love.graphics.print({c,entry.name}, 98, 321)
		love.graphics.printf({{0,0,0},entry.text}, 93, 365, 429, "left")
	end
end

-- updating dialogue
function Dialogue.Updating(dt)
	
end

function Dialogue.Mousepressed(x,y,button)
	if button == 1 then
		local entry = Dialogue.Get(Dialogue.index)
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
	if key == "space" then
		if not entry.dialogue then
			Gamestate = "Response"
			Response.Load()
		else
			Dialogue.index = entry.next
		end
	end
end

return Dialogue