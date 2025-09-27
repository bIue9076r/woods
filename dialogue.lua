-- are these variables even necessary lol help
local Douglas = 1
local Lorelai = 2

local Dialogue = {}
Dialogue.data = {} -- stores all dialogue entries
Dialogue.index = 1 -- tracks which line is currently active

-- adds a new dialogue entry to the system
-- index is where to store it in the table (kind of confused abt)
-- char is character id
-- name is character name
-- text is the dialogue line
function Dialogue.New(index, char, name, text)
    Dialogue.data[index] = {char = char, name = name, text = text}
end

-- returns dialogue entry at given index
-- used to fetch current dialogue line
function Dialogue.Get(index)
    return Dialogue.data[index]
end

-- displays current dialogue line on screen
function Dialogue.Draw()
    local entry = Dialogue.Get(Dialogue.index)
    if entry then
        -- kind of unsure about this
        love.graphics.printf(entry.name .. ": " .. entry.text, 50, 400, 700)
    end
end

-- updating thing
function Dialogue.Updating(dt)
    -- placeholder
end

-- handles input i think
function Dialogue.Keypressed(key)
    -- advances dialogue??
    if key == "space" then
        Dialogue.index = Dialogue.index + 1
    end
end

Dialogue.New(1, Douglas, "Douglas", "PLACEHOLDER: Hello there!")
Dialogue.New(2, Lorelai, "Lorelai", "PLACEHOLDER: Hi Douglas!")

return Dialogue