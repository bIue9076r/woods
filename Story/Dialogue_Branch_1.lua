Dialogue.New("Tree_1_Red_1", "Douglass", 2, "So uh, are- are you also a neuroscience major too? Or like pre-med?",60,"Tree_1_Red_2",true)
Dialogue.New("Tree_1_Red_2", "Lorelai", 6, "Oh. No, haha. I'm a Radio Television Film major. I'm minoring in Chem.",60,"Tree_2",true)

Dialogue.New("Tree_1_Green_1", "Douglass", 2, "Do you like chemistry? Like uh.. you a big fan?",60,"Tree_1_Green_2",true)
Dialogue.New("Tree_1_Green_2", "Lorelai", 2, "Honestly, yeah. I mean I'm really into make-up, so learning about chemistry-",60,"Tree_1_Green_3",true)
Dialogue.New("Tree_1_Green_3", "Lorelai", 2, "Especially learning how to formulate shit, it's cool.",60,"Tree_1_Green_4",true)
Dialogue.New("Tree_1_Green_4", "Douglass", 6, "Make-up is really cool. I mean uh- obviously I don't do make-up-",60,"Tree_1_Green_5",true)
Dialogue.New("Tree_1_Green_5", "Douglass", 2, "But I like how creative it is, you know?",60,"Tree_1_Green_6",true)
Dialogue.New("Tree_1_Green_6", "Lorelai", 2, "That's actually really cool. I would say I do a lot of creative stuff too.",60,"Tree_1_Green_7",true)
Dialogue.New("Tree_1_Green_7", "Douglass", 2, "Really?",60,"Tree_1_Green_8",true)
Dialogue.New("Tree_1_Green_8", "Lorelai", 2, "Yeah. I'm actually a Radio Television Film major. So I do a lot of SFX makeup for films.",60,"Tree_2",true)

Red_1 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "So uh, are- are you also a neuroscience major too? Or like pre-med?", nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Oh. No, haha. I'm a Radio Television Film major. I'm minoring in Chem.", nil),
	Stem.new("Douglass", Douglass_Talk, "Oh, really? Wow, that uh- that's pretty cool. I mean I watch a lot of movies. And films.", nil),
}, Choice_2)

Green_1 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "Do you like chemistry? Like uh.. you a big fan?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Honestly, yeah. I mean I'm really into make-up, so learning about chemistry-", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Especially learning how to formulate shit, it's cool.", nil),
	Stem.new("Douglass", Douglass_Awkward, "Make-up is really cool. I mean uh- obviously I don't do make-up-", nil),
	Stem.new("Douglass", Douglass_Talk, "But I like how creative it is, you know?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "That's actually really cool. I would say I do a lot of creative stuff too.", nil),
	Stem.new("Douglass", Douglass_Talk, "Really?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. I'm actually a Radio Television Film major. So I do a lot of SFX makeup for films.", nil),
	Stem.new("Douglass", Douglass_Talk, "Oh, really? Wow, that uh- that's pretty cool. I mean I watch a lot of movies. And films.", nil),
}, Choice_2)

No_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Dissapointed, "..Uh.. Well. What do you like to do?", nil),
	Stem.new("Douglass", Douglass_Talk, "Oh! Well.. I uh.. I like chemistry. I'm a neuroscience major.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Cool. I'm a Radio Television Film major. I'm minoring in Chem.", nil),
	Stem.new("Douglass", Douglass_Talk, "Oh, really? Wow, that uh- that's pretty cool. I mean I watch a lot of movies. And films.", nil),
},Choice_2)
