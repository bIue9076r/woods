require("assets")
require("Assets/defines")
Button = require("button")
Color_Lorelai = {214/255, 142/255, 162/255}
Color_Douglass = {65/255, 139/255, 185/255}


require("intro")
require("cutscene")
require("end")

Gamestate = "Intro" -- Main Menu

Load_States = {
	["Intro"] = Intro_Load,
	["Cutscene"] = Cutscene_Load,
	["Dialouge"] = nil,
	["End"] = End_Load,
}

Update_States = {
	["Intro"] = Intro_Update,
	["Cutscene"] = Cutscene_Update,
	["Dialouge"] = Dialogue.Updating,
	["End"] = End_Update,
}

Mousepressed_States = {
	["Intro"] = Intro_Mousepressed,
	["Cutscene"] = Cutscene_Mousepressed,
	["Dialouge"] = nil,
	["End"] = End_Mousepressed,
}

Keypressed_States = {
	["Intro"] = Intro_Keypressed,
	["Cutscene"] = Cutscene_Keypressed,
	["Dialouge"] = Dialogue.Keypressed,
	["End"] = End_Keypressed,
}

Draw_States = {
	["Intro"] = Intro_Draw,
	["Cutscene"] = Cutscene_Draw,
	["Dialouge"] = Dialogue.Draw,
	["End"] = End_Draw,
}


function Error_Update(dt)
	Gamestate = "Intro"
end
