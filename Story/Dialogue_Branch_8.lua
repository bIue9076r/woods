Red_8 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You're actually not really my type.",nil),
	Stem.new("Douglass", Douglass_Talk, "..Are you serious?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. Like very much so not my type.",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah uh.. thats alright.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "What do you mean?",nil),
	Stem.new("Douglass", Douglass_Talk, "I don't think you're uh.. my type either.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Well, what the hell are we doing here then?",nil),
	Stem.new("Douglass", Douglass_Talk, "I thought you were really cool until you started-",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh please! You act like I punched your balls man.",nil),
	Stem.new("Douglass", Douglass_Talk, "You're- you're crazy, you know that?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Noted.",nil),
},Bad,true)

Red_8_Alt_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You're actually not really my type.",nil),
	Stem.new("Douglass", Douglass_Talk, "..Are you serious?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. Like very much so not my type.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Really?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "What, what about me is-",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Just not my type man.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah.. alright. sorry.",nil),
},Bad,true)

Red_8_Alt_2 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You're actually not really my type.",nil),
	Stem.new("Douglass", Douglass_Talk, "..Are you serious?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. Like very much so not my type.",nil),
	Stem.new("Douglass", Douglass_Talk, "Wait.. you're joking, right?",nil),
},Choice_8_Red_Alt_2)

Red_8_Alt_2_Branch_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. that was a joke.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh! Oh- yeah! yeah that.. that was funny. Really funny.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "You think so?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Uh.. yeah.",nil),
},Neutral,true)

Red_8_Alt_2_Branch_2 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "No. Like I genuinely am not attracted to you.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "But i thought we- we had such a good connection!",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Well, yeah. But that doesn't change the fact that i'm not interested.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "..Okay- ..Sorry.",nil),
},Bad,true)

Green_8 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Oh- uh.. i'm- i'm pretty busy most of the time.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Well we don't have to hangout long. We can get coffee again.",nil),
	Stem.new("Douglass", Douglass_Talk, "No- no I have like.. tons of exams coming up. I'm- i'm busy.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "You sure?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah.",nil),
},Bad,true)

Green_8_Alt_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah! I mean, we'll definitely see each other",nil),
	Stem.new("Lorelai", Lorelai_Talk, "In class?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah, of course. In class.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "I'm glad we talked.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah. Me too.",nil),
},Neutral,true)

Green_8_Alt_2_Alt_1 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Douglass", Douglass_Talk, "Maybe we could watch that movie you like?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh. Oh yeah, I'd love that. This week?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah.. sure. If that's alright with you.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Of course it is.",nil),
},Good,true)

Green_8_Alt_2_Alt_2 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "We have that study date.",nil),
	Stem.new("Douglass", Douglass_Talk, "Oh! You're right! ..Should it be this week?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Lets do it.",nil),
	Stem.new("Douglass", Douglass_Talk, "Awesome. Wow. I'm really excited.",nil),
},Good,true)

Green_8_Alt_2_Alt_3 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Maybe we could watch that movie you like?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh. Oh yeah, I'd love that.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "And we have that study date.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Oh! You're right! ..This week too?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Lets do it.",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Awesome. Wow.",nil),
},Good,true)

Green_8_Alt_2_Alt_4 = Tree.new({
	Stem.new("Lorelai", Lorelai_Talk, "You think we could see each other again sometime?",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah, of course! I mean- I would love to see you sometime again this week.",nil),
	Stem.new("Douglass", Douglass_Talk, "Maybe another coffee shop run?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "I'd love that.",nil),
	Stem.new("Douglass", Douglass_Talk, "Yeah?",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah.",nil),
},Good,true)

No_8 = Tree.new({
	Stem.new("Douglass", Douglass_Talk, "...",nil),
	Stem.new("Lorelai", Lorelai_Talk, "Yeah I gotta go.",nil),
	Stem.new("Douglass", Douglass_Talk, "Okay",nil),
})
