Dialogue.New("Bad_1", "Douglass", 1, "I think I'm gonna head out right now too.", 60, "Bad_2", true)
Dialogue.New("Bad_2", "Lorelai", 5, "Alright.", 60, "Bad_3", true)
Dialogue.New("Bad_3", "Douglass", 1, "...", 60, "Bad_4", true)
Dialogue.New("Bad_4", "Lorelai", 5, "What?", 60, "Bad_5", true)
Dialogue.New("Bad_5", "Douglass", 1, "Nothing.", 60, "Bad_6", true)
Dialogue.New("Bad_6", "Lorelai", 5, "You're really awkward man.", 60, "Bad_7", true)
Dialogue.New("Bad_7", "Douglass", 5, "..Okay? I thought you were gonna leave.", 60, "Bad_8", true)
Dialogue.New("Bad_8", "Lorelai", 5, "So now you want me to leave?", 60, "Bad_9", true)
Dialogue.New("Bad_9", "Douglass", 5, "Kind of!", 60, "Bad_10", true)
Dialogue.New("Bad_10", "Lorelai", 4, "Fine. Yeah. Bye.", 60, "Bad_11", true)
Dialogue.New("Bad_11", "Douglass", 5, "My god.", 60, "END")

Dialogue.New("Neutral_1", "Douglass", 1, "I think I'm gonna head out right now too.", 60, "Neutral_2", true)
Dialogue.New("Neutral_2", "Lorelai", 5, "Alright.", 60, "Neutral_3", true)
Dialogue.New("Neutral_3", "Douglass", 1, "...", 60, "Neutral_4", true)
Dialogue.New("Neutral_4", "Lorelai", 5, "What?", 60, "Neutral_5", true)
Dialogue.New("Neutral_5", "Douglass", 1, "Nothing.", 60, "Neutral_6", true)
Dialogue.New("Neutral_6", "Lorelai", 5, "You're really awkward man.", 60, "Neutral_7", true)
Dialogue.New("Neutral_7", "Douglass", 5, "..Okay? I thought you were gonna leave.", 60, "Neutral_8", true)
Dialogue.New("Neutral_8", "Douglass", 5, "My god.", 60, "END")

Dialogue.New("Good_1", "Douglass", 1, "I think I'm gonna head out right now too.", 60, "Good_2", true)
Dialogue.New("Good_2", "Lorelai", 5, "Alright.", 60, "Good_3", true)
Dialogue.New("Good_3", "Douglass", 1, "...", 60, "Good_4", true)
Dialogue.New("Good_4", "Lorelai", 5, "What?", 60, "Good_5", true)
Dialogue.New("Good_5", "Douglass", 1, "Nothing.", 60, "Good_6", true)
Dialogue.New("Good_6", "Lorelai", 5, "You're really awkward man.", 60, "Good_7", true)
Dialogue.New("Good_7", "Douglass", 5, "..Okay? I thought you were gonna leave.", 60, "Good_8", true)
Dialogue.New("Good_8", "Lorelai", 5, "So now you want me to leave?", 60, "Good_9", true)
Dialogue.New("Good_9", "Douglass", 5, "Kind of!", 60, "Good_10", true)
Dialogue.New("Good_10", "Lorelai", 4, "Fine. Yeah. Bye.", 60, "Good_11", true)
Dialogue.New("Good_11", "Lorelai", 5, "So now you want me to leave?", 60, "Good_12", true)
Dialogue.New("Good_12", "Douglass", 5, "Kind of!", 60, "Good_13", true)
Dialogue.New("Good_13", "Lorelai", 4, "Fine. Yeah. Bye.", 60, "Good_14", true)
Dialogue.New("Good_14", "Douglass", 5, "My god.", 60, "END")

Bad = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "I think I'm gonna head out right now too.", nil),
	Stem.new("Lorelai", Lorelai_Dissapointed, "Alright.", nil),
	Stem.new("Douglass", Douglass_Talk, "...", nil),
	Stem.new("Lorelai", Lorelai_Dissapointed, "What?", nil),
	Stem.new("Douglass", Douglass_Talk, "Nothing.", nil),
	Stem.new("Lorelai", Lorelai_Dissapointed, "You're really awkward man.", nil),
	Stem.new("Douglass", Douglass_Annoyed, "..Okay? I thought you were gonna leave.", nil),
	Stem.new("Lorelai", Lorelai_Dissapointed, "So now you want me to leave?", nil),
	Stem.new("Douglass", Douglass_Annoyed, "Kind of!", nil),
	Stem.new("Lorelai", Lorelai_Angry, "Fine. Yeah. Bye.", nil),
	Stem.new("Douglass", Douglass_Annoyed, "My god.", nil),
})

Neutral = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "I had a good time talking with you.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah me too.", nil),
	Stem.new("Douglass", Douglass_Talk, "You seem like.. super cool and I'm glad we got to talk.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "I feel the same way You're not half bad man.", nil),
	Stem.new("Douglass", Douglass_Talk, "See you in class?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "For sure.", nil),
	Stem.new("Douglass", Douglass_Talk, "See you.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Bye.", nil),
})

Good = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "..Lorelai?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah?", nil),
	Stem.new("Douglass", Douglass_Talk, "I uh.. I..", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Whats up?", nil),
	Stem.new("Douglass", Douglass_Talk, "I really really like you. Like.. Like a lot.", nil),
	Stem.new("Douglass", Douglass_Talk, "And I think that you're just so cool.. and smart.. and cool!", nil),
	Stem.new("Douglass", Douglass_Talk, "I want to see you again.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. I do too. I feel the same way.", nil),
	Stem.new("Douglass", Douglass_Talk, "You do?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Of course I do.", nil),
	Stem.new("Douglass", Douglass_Talk, "Well.. then what now?", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Walk with me to class. I wanna tell you something.", nil),
	Stem.new("Douglass", Douglass_Talk, "Alright.", nil),
	Stem.new("Lorelai", Lorelai_Talk, "Cm'here.", nil),
})
