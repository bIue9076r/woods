-- Definitions of stuff/Assets

--Fonts
Font.new("Main","/Assets/font.ttf",16)
love.graphics.setFont(Font.get("Main"))

--Images
Image.new("Outside_Background", "/Assets/abstract.png")
Image.new("Textbox", "/Assets/textbox.png")
Image.new("Lorelai_1", "/Assets/Lorelai_Default.png")
Image.new("Lorelai_2", "/Assets/Lorelai_Talking.png")
Image.new("Lorelai_3", "/Assets/Lorelai_Love.png")
Image.new("Lorelai_4", "/Assets/Lorelai_Angry.png")
Image.new("Lorelai_5", "/Assets/Lorelai_Annoyed.png")
Image.new("Lorelai_6", "/Assets/Lorelai_Anxious.png")

--Sounds
Sound.new("Back","/Assets/jazz-1.mp3","stream")
