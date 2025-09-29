-- End State
-- End of the game and credits

Credits = [[

Kairos Koffee


-- Programmers ------------------------------------------------------------

@kaorei
@le_banane
@lydsleepy

-- Artists ------------------------------------------------------------

@lucasnyn
@tshnamii
@yuno_d.

-- Writters ------------------------------------------------------------

@lucasnyn

-- Sound Design ------------------------------------------------------------

@le_banane

-- Project Managers ------------------------------------------------------------

@lucasnyn

-- Special Thanks To ------------------------------------------------------------

Music (jazz-1) by Ievgen Poltavskyi from Pixabay
Levi Windows (Font) by Levi Szekeres
Sound Effects (lorelai-huh, lorelai-what) by freesound_community from Pixabay
Sound Effects (douglass-huh, lorelai-gasp, crowd-shocked, applause-crowd, lorelai-laughter) by Universfield from Pixabay


Thanks for Playing!

]].."Your Attraction: "..Compatibility.value

Scroll_T = 0

function End_Load()

end

function End_Update(dt)
	Scroll_T = Scroll_T + 10*dt

	if Scroll_T >= 140 then
		love.event.quit()
	end
end

function End_Mousepressed(x,y,button)

end

function End_Keypressed(key)

end

function End_Draw()
	local p = (480)*(1 - (Scroll_T/100)) + (Scroll_T/100)*(-480)
	love.graphics.printf({{1,1,1},Credits},80,p,560,"left")

	local back_sound = Sound.get("End")
	if back_sound and not (back_sound:isPlaying()) then
		back_sound:setVolume(Music_Volume)
		back_sound:seek(0)
		back_sound:play()
	end
end
