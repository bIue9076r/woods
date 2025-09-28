require("assets")
require("Assets/defines")
require("sfx")
Button = require("button")
Compatibility = require("compatibility")
Timer = require("Timer")

Color_Lorelai = {150/255, 54/255, 81/255}
Color_Douglass = {53/255, 113/255, 151/255}

Colors = {
	["Lorelai"] = Color_Lorelai,
	["Douglass"] = Color_Douglass,
}

require("dialogue")
require("response")

require("intro")
require("cutscene")
require("end")

require("Story.Dialogue")
require("Story.Responses")

Gamestate = "Intro" -- Main Menu
Main_Volume = 1
Music_Volume = 1
SFX_Volume = 1
love.audio.setVolume(Main_Volume)

Load_States = {
	["Intro"] = Intro_Load,
	["Cutscene"] = Cutscene_Load,
	["Dialogue"] = nil,
	["Response"] = nil,
	["End"] = End_Load,
}

Update_States = {
	["Intro"] = Intro_Update,
	["Cutscene"] = Cutscene_Update,
	["Dialogue"] = Dialogue.Updating,
	["Response"] = Response.Updating,
	["End"] = End_Update,
}

Mousepressed_States = {
	["Intro"] = Intro_Mousepressed,
	["Cutscene"] = Cutscene_Mousepressed,
	["Dialogue"] = nil,
	["Response"] = Response.Mousepressed,
	["End"] = End_Mousepressed,
}

Keypressed_States = {
	["Intro"] = Intro_Keypressed,
	["Cutscene"] = Cutscene_Keypressed,
	["Dialogue"] = Dialogue.Keypressed,
	["Response"] = Response.Keypressed,
	["End"] = End_Keypressed,
}

Draw_States = {
	["Intro"] = Intro_Draw,
	["Cutscene"] = Cutscene_Draw,
	["Dialogue"] = Dialogue.Draw,
	["Response"] = Response.Draw,
	["End"] = End_Draw,
}


function Error_Update(dt)
	Gamestate = "Intro"
end
