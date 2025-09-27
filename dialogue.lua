local Douglas = 1
local Lorelai = 2

local Dialogue = {}
Dialogue.data = {} -- stores all dialogue entries
Dialogue.index = 1 

-- adds a new dialogue entry to the system
-- char is character id
-- name is character name
-- text is the dialogue line
function Dialogue.New(char, name, text)
    local i = #Dialogue.data + 1
    Dialogue.data[i] = {char = char, name = name, text = text}
end

-- returns dialogue entry at given index
-- used to fetch current dialogue line
function Dialogue.Get(index)
    return Dialogue.data[index]
end

-- displays current dialogue line on screen
function Dialogue.Draw()

    local entry = Dialogue.Get(Dialogue.index) -- gets current dialogue line

    if entry then
        local dialogueBox = Image["Textbox"] -- textbox.png
        local boxX, boxY = 50, 400 -- position of dialogue box
        if dialogueBox and love and love.graphics and love.graphics.draw then
            love.graphics.draw(dialogueBox, boxX, boxY)
        end

        local nameX, nameY = 98, 321
        local textX, textY = 93, 365
        local textWidth = 429

        love.graphics.print(entry.name, nameX, nameY)
        love.graphics.printf(entry.text, textX, textY, textWidth, "left")
    end
end

-- updating thing
function Dialogue.Updating(dt)
    -- placeholder
end

-- handles input i think
function Dialogue.Keypressed(key)
    if key == 'space' and Dialogue.index < #Dialogue.data then
        Dialogue.index = Dialogue.index + 1
    end
end

Dialogue.New(Douglas, "Douglas", "PLACEHOLDER: Hello there!")
Dialogue.New(Lorelai, "Lorelai", "PLACEHOLDER: Hi Douglas!")

return Dialogue