-- Definitions of stuff/Assets

-- cursor
love.mouse.setCursor(love.mouse.newCursor("/Assets/mouse2.png"))

--Fonts
FONT_SIZE = 16
Font.new("Main","/Assets/font.ttf",FONT_SIZE)
love.graphics.setFont(Font.get("Main"))

--Images
Image.new("temp_button", "/Assets/button_temp.png")
Image.new("Abstract", "/Assets/abstract.png")
Image.new("button", "/Assets/Play.png")
Image.new("settings", "/Assets/Settings.png")
Image.new("quit", "/Assets/Quit.png")
Image.new("Objective", "/Assets/Objective.png")
Image.new("Outside_Background", "/Assets/Background.png")
Image.new("Inside_Background_Lorelai", "/Assets/Inside_Background_Lorelai.png")
Image.new("Inside_Background_Douglass", "/Assets/Inside_Background_Douglass.png")

Image.new("Textbox", "/Assets/textbox.png")
Image.new("Lorelai_1", "/Assets/Lorelai_Default.png")
Image.new("Lorelai_2", "/Assets/Lorelai_Talking.png")
Image.new("Lorelai_3", "/Assets/Lorelai_Love.png")
Image.new("Lorelai_4", "/Assets/Lorelai_Angry.png")
Image.new("Lorelai_5", "/Assets/Lorelai_Annoyed.png")
Image.new("Lorelai_6", "/Assets/Lorelai_Anxious.png")
Image.new("Lorelai_7", "/Assets/Lorelai_Flirt.png")

Image.new("Douglass_1", "/Assets/Douglass_Default.png")
Image.new("Douglass_2", "/Assets/Douglass_Talking.png")
Image.new("Douglass_3", "/Assets/Douglass_Love.png")
Image.new("Douglass_4", "/Assets/Douglass_Embarassed.png")
Image.new("Douglass_5", "/Assets/Douglass_Annoyed.png")
Image.new("Douglass_6", "/Assets/Douglass_Anxious.png")
Image.new("Douglass_7", "/Assets/Douglass_Blush.png")

Image.new("Dialogue_A", "/Assets/Dialogue_A.png")
Image.new("Dialogue_B", "/Assets/Dialogue_B.png")
Image.new("Dialogue_C", "/Assets/Dialogue_C.png")
Image.new("Dialogue_D", "/Assets/Dialogue_D.png")
Image.new("2Box_Dialogue_A", "/Assets/2Box_Dialogue_A.png")
Image.new("2Box_Dialogue_B", "/Assets/2Box_Dialogue_B.png")
Image.new("Timer_0", "/Assets/Timer_0.png")
Image.new("Timer_1", "/Assets/Timer_1.png")
Image.new("Timer_2", "/Assets/Timer_2.png")
Image.new("Timer_3", "/Assets/Timer_3.png")
Image.new("Timer_4", "/Assets/Timer_4.png")
Image.new("Timer_5", "/Assets/Timer_5.png")
Image.new("Timer_6", "/Assets/Timer_6.png")

--Sounds
Sound.new("Back","/Assets/jazz-1.mp3","stream")
Sound.new("cafe","/Assets/cafe.mp3","stream")
Sound.new("tick","/Assets/tick.mp3","stream")
Sound.new("End","/Assets/end.mp3","stream")

Sound.new("Yeep","/Assets/button.mp3","static")
Sound.new("Nope","/Assets/bad_button.mp3","static")

Sound.new("Applause","/Assets/applause-crowd.mp3","static")
Sound.new("Shocked","/Assets/crowd-shocked.mp3","static")
Sound.new("Douglass_Huh","/Assets/douglass-huh.mp3","static")
Sound.new("Lorelai_Huh","/Assets/lorelai-huh.mp3","static")
Sound.new("Lorelai_Gasp","/Assets/lorelai-gasp.mp3","static")
Sound.new("Lorelai_What","/Assets/lorelai-what.mp3","static")
Sound.new("Lorelai_Laughter","/Assets/lorelai-laughter.mp3","static")

-- Emotions
Lorelai_Normal = 1
Lorelai_Dissapointed = 2
Lorelai_Concerned = 6
Lorelai_Happy = 3
Lorelai_Flirty = 7

Douglass_Normal = 1
Douglass_Awkward = 1
Douglass_SideEye = 1