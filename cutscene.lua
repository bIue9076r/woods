-- Cutscene State
-- Intro to the game with the chars talking to each other

function Cutscene_Load()

end

function Cutscene_Update(dt)
	
end

function Cutscene_Mousepressed(x,y,button)
	local sound = Sound.get("Nope")
	sound:setVolume(0.125 * SFX_Volume)
	sound:seek(0)
	sound:play()
end

function Cutscene_Keypressed(key)
	-- on next load
	-- Timer.init()
	-- Timer.started = true
end

function Cutscene_Draw()
	local img
	img = Image.get("Inside_Background_Lorelai")
	love.graphics.draw(img,0,0)

	img = Image.get("Lorelai_1")
	love.graphics.draw(img,0,0)

	love.graphics.setColor(1,1,1,(255*0.80)/255)
	img = Image.get("Textbox")
	love.graphics.draw(img,0,0)
	love.graphics.setColor(1,1,1)
	love.graphics.print({Color_Lorelai,"Lorelai"},95,320)
end
