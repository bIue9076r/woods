-- Cutscene State
-- Intro to the game with the chars talking to each other

function Cutscene_Load()

end

function Cutscene_Update(dt)
	
end

function Cutscene_Mousepressed(x,y,button)

end

function Cutscene_Keypressed(key)

end

function Cutscene_Draw()
	--love.graphics.setBackgroundColor(255/255,50/255,255/255)
	local img = Image.get("Lorelai_1")
	love.graphics.draw(img,0,0)

	img = Image.get("Textbox")
	love.graphics.draw(img,0,0)
	love.graphics.print({Color_Lorelai,"Lorelai"},95,320)
end
