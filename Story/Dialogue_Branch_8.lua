Red_8 = Tree.new({
	Stem.new("Lorelai", Lorelai_Concerned, "You're actually not really my type.",nil),
	Stem.new("Douglass", Douglass_SideEye, "..Are you serious?",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Yeah. Like very much so not my type.",nil),
	Stem.new("Douglass", Douglass_SideEye, "Yeah uh.. thats alright.",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "What do you mean?",nil),
	Stem.new("Douglass", Douglass_SideEye, "I don't think you're uh.. my type either.",nil),
	Stem.new("Lorelai", Lorelai_Angry, "Well, what the hell are we doing here then?",nil),
	Stem.new("Douglass", Douglass_SideEye, "I thought you were really cool until you started-",nil),
	Stem.new("Lorelai", Lorelai_Dissapointed, "Oh please! You act like I punched your balls man.",nil),
	Stem.new("Douglass", Douglass_Annoyed, "You're- you're crazy, you know that?",nil),
	Stem.new("Lorelai", Lorelai_Dissapointed, "Noted.",nil),
},Bad,true)

Red_8_Alt_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Concerned, "You're actually not really my type.",nil),
	Stem.new("Douglass", Douglass_SideEye, "..Are you serious?",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Yeah. Like very much so not my type.",nil),
	Stem.new("Douglass", Douglass_SideEye, "Really?",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Yeah.",nil),
	Stem.new("Douglass", Douglass_SideEye, "What, what about me is-",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Just not my type man.",nil),
	Stem.new("Douglass", Douglass_SideEye, "Yeah.. alright. sorry.",nil),
},Bad,true)

Red_8_Alt_2 = Tree.new({
	Stem.new("Lorelai", Lorelai_Concerned, "You're actually not really my type.",nil),
	Stem.new("Douglass", Douglass_SideEye, "..Are you serious?",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Yeah. Like very much so not my type.",nil),
	Stem.new("Douglass", Douglass_SideEye, "Wait.. you're joking, right?",nil),
},Choice_8_Red_Alt_2)

Red_8_Alt_2_Branch_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. that was a joke.",nil),
	Stem.new("Douglass", Douglass_Awkward, "Oh! Oh- yeah! yeah that.. that was funny. Really funny.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "You think so?",nil),
	Stem.new("Douglass", Douglass_Awkward, "Uh.. yeah.",nil),
},Neutral,true)

Red_8_Alt_2_Branch_2 = Tree.new({
	Stem.new("Lorelai", Lorelai_Concerned, "No. Like I genuinely am not attracted to you.",nil),
	Stem.new("Douglass", Douglass_SideEye, "But i thought we- we had such a good connection!",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Well, yeah. But that doesn't change the fact that i'm not interested.",nil),
	Stem.new("Douglass", Douglass_SideEye, "..Okay- ..Sorry.",nil),
},Bad,true)

Green_8 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_SideEye, "Oh- uh.. i'm- i'm pretty busy most of the time.",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Well we don't have to hangout long. We can get coffee again.",nil),
	Stem.new("Douglass", Douglass_Awkward, "No- no I have like.. tons of exams coming up. I'm- i'm busy.",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "You sure?",nil),
	Stem.new("Douglass", Douglass_SideEye, "Yeah.",nil),
},Bad,true)

Green_8_Alt_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah! I mean, we'll definitely see each other",nil),
	Stem.new("Lorelai", Lorelai_Talk, "In class?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course. In class.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "I'm glad we talked.",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah. Me too.",nil),
},Neutral,true)

Green_8_Alt_2_Alt_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Douglass", Douglass_Talk, "Maybe we could watch that movie you like?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh. Oh yeah, I'd love that. This week?",nil),
	Stem.new("Douglass", Douglass_Happy, "Yeah.. sure. If that's alright with you.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Of course it is.",nil),
},Good,true)

Green_8_Alt_2_Alt_2 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "We have that study date.",nil),
	Stem.new("Douglass", Douglass_Talk, "Oh! You're right! ..Should it be this week?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Lets do it.",nil),
	Stem.new("Douglass", Douglass_Happy, "Awesome. Wow. I'm really excited.",nil),
},Good,true)

Green_8_Alt_2_Alt_3 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Douglass", Douglass_Talk, "Maybe we could watch that movie you like?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh. Oh yeah, I'd love that.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "And we have that study date.",nil),
	Stem.new("Douglass", Douglass_Talk, "Oh! You're right! ..This week too?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Lets do it.",nil),
	Stem.new("Douglass", Douglass_Happy, "Awesome. Wow.",nil),
},Good,true)

Green_8_Alt_2_Alt_4 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Douglass", Douglass_Talk, "Maybe another coffee shop run?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "I'd love that.",nil),
	Stem.new("Douglass", Douglass_Happy, "Yeah?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah.",nil),
},Good,true)

No_8 = Tree.new({
	Stem.new("Douglass", Douglass_SideEye, "...",nil),
	Stem.new("Lorelai", Lorelai_Concerned, "Yeah I gotta go.",nil),
	Stem.new("Douglass", Douglass_SideEye, "Okay",nil),
})
