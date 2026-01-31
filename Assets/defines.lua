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
Image.new("Options","/Assets/Bg_o_kk.png")

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

Image.new("Options_button", "/Assets/Back_button.png")
Image.new("Options_SFX_up_button", "/Assets/SFX_up_button.png")
Image.new("Options_SFX_down_button", "/Assets/SFX_down_button.png")
Image.new("Options_Timer_up_button", "/Assets/Timer_up_button.png")
Image.new("Options_Timer_down_button", "/Assets/Timer_down_button.png")
Image.new("Options_Volume_up_button", "/Assets/Volume_up_button.png")
Image.new("Options_Volume_down_button", "/Assets/Volume_down_button.png")
Image.new("Options_SFX_0", "/Assets/SFX0.png")
Image.new("Options_SFX_1", "/Assets/SFX1.png")
Image.new("Options_SFX_2", "/Assets/SFX2.png")
Image.new("Options_SFX_3", "/Assets/SFX3.png")
Image.new("Options_SFX_4", "/Assets/SFX4.png")
Image.new("Options_SFX_5", "/Assets/SFX5.png")
Image.new("Options_SFX_6", "/Assets/SFX6.png")
Image.new("Options_SFX_7", "/Assets/SFX7.png")
Image.new("Options_SFX_8", "/Assets/SFX8.png")
Image.new("Options_SFX_9", "/Assets/SFX9.png")
Image.new("Options_SFX_10", "/Assets/SFX10.png")

Image.new("Options_Volume_0", "/Assets/V0.png")
Image.new("Options_Volume_1", "/Assets/V1.png")
Image.new("Options_Volume_2", "/Assets/V2.png")
Image.new("Options_Volume_3", "/Assets/V3.png")
Image.new("Options_Volume_4", "/Assets/V4.png")
Image.new("Options_Volume_5", "/Assets/V5.png")
Image.new("Options_Volume_6", "/Assets/V6.png")
Image.new("Options_Volume_7", "/Assets/V7.png")
Image.new("Options_Volume_8", "/Assets/V8.png")
Image.new("Options_Volume_9", "/Assets/V9.png")
Image.new("Options_Volume_10", "/Assets/V10.png")

Image.new("Options_Timer_3", "/Assets/T3.png")
Image.new("Options_Timer_4", "/Assets/T4.png")
Image.new("Options_Timer_5", "/Assets/T5.png")
Image.new("Options_Timer_6", "/Assets/T6.png")
Image.new("Options_Timer_7", "/Assets/T7.png")
Image.new("Options_Timer_8", "/Assets/T8.png")
Image.new("Options_Timer_9", "/Assets/T9.png")
Image.new("Options_Timer_10", "/Assets/T10.png")
Image.new("Options_Timer_11", "/Assets/T11.png")
Image.new("Options_Timer_12", "/Assets/T12.png")
Image.new("Options_Timer_13", "/Assets/T13.png")
Image.new("Options_Timer_14", "/Assets/T14.png")

--Sounds
Sound.new("Back","/Assets/jazz-1.mp3","stream")
Sound.new("Sett","/Assets/settings.mp3","stream")
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
Lorelai_Talk = 2
Lorelai_Happy = 3
Lorelai_Angry = 4
Lorelai_Dissapointed = 5
Lorelai_Concerned = 6
Lorelai_Flirty = 7

Douglass_Normal = 1
Douglass_Talk = 2
Douglass_Happy = 3
Douglass_Hand = 4
Douglass_Annoyed = 5
Douglass_Awkward = 6
Douglass_SideEye = 7