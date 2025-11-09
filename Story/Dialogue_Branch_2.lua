Dialogue.New("Tree_2", "Douglass", 2, "Oh, really? Wow, that uh- that's pretty cool. I mean I watch a lot of movies. And films.",60,"Choice_2")

Dialogue.New("Tree_2_Red_1", "Douglass", 2, "I watch a lot of PC movies. Like uh.. Puperman. And Patman- yeah. ",60,"Tree_2_Red_2",true)
Dialogue.New("Tree_2_Red_2", "Lorelai", 2, "My brother likes a lot of superhero shit.",60,"Tree_2_Red_3",true)
Dialogue.New("Tree_2_Red_3", "Douglass", 2, "Your brother?",60,"Tree_2_Red_4",true)
Dialogue.New("Tree_2_Red_4", "Lorelai", 2, "Yeah. He's five.",60,"Tree_2_Red_5",true)
Dialogue.New("Tree_2_Red_5", "Douglass", 2, "Oh.",60,"Tree_2_Red_6",true)
Dialogue.New("Tree_2_Red_6", "Lorelai", 6, "No but Superheroes are pretty cool. I mean they're all about justice. Seems cool.",60,"Tree_3",true)

Dialogue.New("Tree_2_Green_1", "Douglass", 2, "So. What types of movies do you like?",60,"Tree_2_Green_2",true)
Dialogue.New("Tree_2_Green_2", "Lorelai", 2, "You ever heard of the Godfather?",60,"Tree_2_Green_3",true)
Dialogue.New("Tree_2_Green_3", "Douglass", 2, "Uh.. no. I don't- probably not.",60,"Tree_2_Green_4",true)
Dialogue.New("Tree_2_Green_4", "Lorelai", 3, "Well its cinematography is the best. Not even kidding.",60,"Tree_2_Green_5",true)
Dialogue.New("Tree_2_Green_5", "Lorelai", 2, "They do a bunch of different scene and perspective changing, I mean-",60,"Tree_2_Green_6",true)
Dialogue.New("Tree_2_Green_6", "Lorelai", 2, "You just have to see it for yourself.",60,"Choice_3")

Dialogue.New("Tree_2_Green_6_Branch_1_1", "Douglass", 2, "Maybe we could see it together some day? If you uh- don't mind watching it again.",60,"Tree_2_Green_6_Branch_1_2",true)
Dialogue.New("Tree_2_Green_6_Branch_1_2", "Lorelai", 2, "Yeah! Honestly I would love to see what you think about it. ",60,"Tree_2_Green_6_Branch_1_3",true)
Dialogue.New("Tree_2_Green_6_Branch_1_3", "Lorelai", 2, "I would definitely say it's a creative kind of movie. You know?",60,"Tree_2_Green_6_Branch_1_4",true)
Dialogue.New("Tree_2_Green_6_Branch_1_4", "Douglass", 2, "..Yeah. Haha.",60,"Tree_3",true)

Dialogue.New("Tree_2_Green_6_Branch_2_1", "Douglass", 2, "Maybe we could see it together some day? If you uh- don't mind watching it again.",60,"Tree_2_Green_6_Branch_2_2",true)
Dialogue.New("Tree_2_Green_6_Branch_2_2", "Lorelai", 2, "Oh. Yeah, uh. Maybe.",60,"Tree_2_Green_6_Branch_2_3",true)
Dialogue.New("Tree_2_Green_6_Branch_2_3", "Douglass", 2, "..Alright.",60,"Tree_3",true)

Dialogue.New("Tree_2_Blue_1", "Douglass", 2, "You film a lot of stuff? What kind of things do you uh.. film?",60,"Tree_2_Blue_2",true)
Dialogue.New("Tree_2_Blue_2", "Lorelai", 2, "Honestly it's kinda a lot of slice of life stuff I guess. But I do a little horror too.",60,"Tree_2_Blue_3",true)
Dialogue.New("Tree_2_Blue_3", "Douglass", 2, "Horror? I can't really watch horror-",60,"Tree_2_Blue_4",true)
Dialogue.New("Tree_2_Blue_4", "Lorelai", 2, "You scared?",60,"Choice_4")

Dialogue.New("Tree_2_Blue_Branch_1_1", "Douglass", 2, "Uh.. no. not at all. Just uh.. Most are just uh- too tame.. You know?",60,"Tree_2_Blue_Branch_1_2",true)
Dialogue.New("Tree_2_Blue_Branch_1_2", "Lorelai", 2, "Uhm. I guess.",60,"Tree_3",true)

Dialogue.New("Tree_2_Blue_Branch_2_1", "Douglass", 2, "Yeah.. yeah I uh- kinda am. Can't really handle gore that much.",60,"Tree_2_Blue_Branch_2_2",true)
Dialogue.New("Tree_2_Blue_Branch_2_2", "Lorelai", 2, "Aw. That's kinda cute.",60,"Tree_2_Blue_Branch_2_3",true)
Dialogue.New("Tree_2_Blue_Branch_2_3", "Douglass", 2, "..Really?",60,"Tree_2_Blue_Branch_2_4",true)
Dialogue.New("Tree_2_Blue_Branch_2_4", "Lorelai", 7, "Least you admitted it, you know? Scared men are hot.",60,"Tree_2_Blue_Branch_2_5",true)
Dialogue.New("Tree_2_Blue_Branch_2_5", "Douglass", 2, "..Uh... Yeah.",60,"Tree_3",true)

Dialogue.New("Tree_2_Purple_1", "Douglass", 2, "So.. Why are you a chemistry minor?",60,"Tree_2_Purple_2",true)
Dialogue.New("Tree_2_Purple_2", "Douglass", 2, "I mean it's pretty different from film.",60,"Tree_2_Purple_3",true)
Dialogue.New("Tree_2_Purple_3", "Lorelai", 2, "Honestly I'm just really interested in SFX makeup.",60,"Tree_2_Purple_4",true)
Dialogue.New("Tree_2_Purple_4", "Lorelai", 2, "And I feel like learning about how to formulate different types of special effects make up-",60,"Tree_2_Purple_5",true)
Dialogue.New("Tree_2_Purple_5", "Lorelai", 3, "is just really cool to me. So in a way I feel like it's pretty similar.",60,"Tree_2_Purple_6",true)
Dialogue.New("Tree_2_Purple_6", "Douglass", 2, "Oh, really? Wow, that uh- that's pretty cool. I mean I watch a lot of movies. And films.",60,"Tree_3",true)

Red_2 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "I watch a lot of PC movies. Like uh.. Puperman. And Patman- yeah. ", nil),
	Stem.new("Lorelai", Lorelai_Talk, "My brother likes a lot of superhero shit.", nil),
	Stem.new("Douglass", Douglass_Talk, "Your brother?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. He's five.", nil),
	Stem.new("Douglass", Douglass_Talk, "Oh.", nil),
	Stem.new("Lorelai", Lorelai_Concerned, "No but Superheroes are pretty cool. I mean they're all about justice. Seems cool.", nil),
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
}, Choice_3)

Green_2 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "So. What types of movies do you like?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "You ever heard of the Godfather?", nil),
	Stem.new("Douglass", Douglass_Talk, "Uh.. no. I don't- probably not.", nil),
	Stem.new("Lorelai", Lorelai_Happy, "Well its cinematography is the best. Not even kidding.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "They do a bunch of different scene and perspective changing, I mean-", nil),
	Stem.new("Lorelai", Lorelai_Talk, "You just have to see it for yourself.", nil),
}, Choice_2_Green)

Green_2_Branch_1 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "Maybe we could see it together some day? If you uh- don't mind watching it again.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah! Honestly I would love to see what you think about it. ", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I would definitely say it's a creative kind of movie. You know?", nil),
	Stem.new("Douglass", Douglass_Talk, "..Yeah. Haha.", nil),
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
}, Choice_3)

Green_2_Branch_2 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "Maybe we could see it together some day? If you uh- don't mind watching it again.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh. Yeah, uh. Maybe.", nil),
	Stem.new("Douglass", Douglass_Talk, "..Alright.", nil),
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
}, Choice_3)

Green_2_Branch_3 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
},Choice_3)

Blue_2 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "You film a lot of stuff? What kind of things do you uh.. film?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Honestly it's kinda a lot of slice of life stuff I guess. But I do a little horror too.", nil),
	Stem.new("Douglass", Douglass_Talk, "Horror? I can't really watch horror-", nil),
	Stem.new("Lorelai", Lorelai_Talk, "You scared?", nil),
}, Choice_2_Blue)

Blue_2_Branch_1 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "Uh.. no. not at all. Just uh.. Most are just uh- too tame.. You know?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Uhm. I guess.", nil),
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
},Choice_3)

Blue_2_Branch_2 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "Yeah.. yeah I uh- kinda am. Can't really handle gore that much.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Aw. That's kinda cute.", nil),
	Stem.new("Douglass", Douglass_Talk, "..Really?", nil),
	Stem.new("Lorelai", Lorelai_Flirty, "Least you admitted it, you know? Scared men are hot.", nil),
	Stem.new("Douglass", Douglass_Talk, "..Uh... Yeah.", nil),
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
},Choice_3)

Purple_2 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "So.. Why are you a chemistry minor?", nil),
	Stem.new("Douglass", Douglass_Talk, "I mean it's pretty different from film.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Honestly I'm just really interested in SFX makeup.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "And I feel like learning about how to formulate different types of special effects make up-", nil),
	Stem.new("Lorelai", Lorelai_Happy, "is just really cool to me. So in a way I feel like it's pretty similar.", nil),
	Stem.new("Douglass", Douglass_Talk, "Oh, really? Wow, that uh- that's pretty cool. I mean I watch a lot of movies. And films.", nil),
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
}, Choice_3)

No_2 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "...Cool", nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Movies are cool.", nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah...", nil),
	Stem.new("Douglass", Douglass_Talk, "So like uh- what- what type of coffee did you get?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I just got a cappuccino. I think they taste good.", nil),
},Choice_3)