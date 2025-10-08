Response.New("Choice_1","Lorelai",1,1,{
	"Are you majoring in neuroscience too?",
	"Do you like chemistry?",
},{
	function ()
		Likes_Chem = false
		Dialogue.index = "Tree_1_Red_1"
		Dialogue.tree = Red_1
	end,

	function ()
		Dialogue.index = "Tree_1_Green_1"
		Dialogue.tree = Green_1
	end,
})

Response.New("Choice_2","Lorelai",1,0,{
	"I love PC movies.",
	"What types of movies do you like?",
	"Types of films you record?",
	"Why are you a chemistry minor?",
},{
	function ()
		Dialogue.index = "Tree_2_Red_1"
	end,

	function ()
		Dialogue.index = "Tree_2_Green_1"
	end,

	function ()
		Dialogue.index = "Tree_2_Blue_1"
	end,

	function ()
		Dialogue.index = "Tree_2_Purple_1"
	end,
})

Response.New("Choice_3","Lorelai",1,1,{
	"Sounds good.",
	"We could see it together?",
},{
	function ()
		Dialogue.index = "Tree_3"
	end,

	function ()
		if Likes_Chem then
			Dialogue.index = "Tree_2_Green_6_Branch_1_1"
			Compatibility.increase(0.2)
		else
			Dialogue.index = "Tree_2_Green_6_Branch_2_1"
		end
	end,
})

Response.New("Choice_4","Lorelai",1,1,{
	"Not at all. (lie)",
	"Kinda",
},{
	function ()
		Dialogue.index = "Tree_2_Blue_Branch_1_1"
	end,

	function ()
		Dialogue.index = "Tree_2_Blue_Branch_2_1"
	end,
})

Response.New("Choice_5","Douglass",1,0,{
	"You think you’ll taste just as good?",
	"What kind of coffee did you get?",
	"I just really like cappuccinos.",
	"Do you like coffee?",
},{
	function ()
		Dialogue.index = "Tree_3_Red_1"
	end,

	function ()
		Dialogue.index = "Tree_3_Green_1"
	end,

	function ()
		Dialogue.index = "Tree_3_Blue_1"
	end,

	function ()
		Dialogue.index = "Tree_3_Purple_1"
	end,
})

Response.New("Choice_6","Douglass",1,1,{
	"No I meant your lips.",
	"Yeah. Your coffee.",
},{
	function ()
		if Compatibility.value >= 0 then
			Dialogue.index = "Tree_3_Red_2_Branch_1_1"
		else
			Dialogue.index = "Tree_3_Red_2_Branch_2_1"
		end
	end,

	function ()
		Dialogue.index = "Tree_3_Red_2_Branch_3_1"
	end,
})

Response.New("Choice_7","Douglass",1,1,{
	"Call out Doug's lie. (firm)",
	"Call out Doug's lie. (flirt)",
},{
	function ()
		Dialogue.index = "Tree_3_Green_5_Branch_1_1"
		Compatibility.decrease(0.2)
	end,

	function ()
		Dialogue.index = "Tree_3_Green_5_Branch_2_1"
		Compatibility.increase(0.2)
	end,
})

Response.New("Choice_1323","Douglass",1,1,{
	"You seem impressed really easily.",
	"I design a lot of clothes.",
},{
	function ()
		Compatibility.decrease(0.2)
		if Compatibility.value <= 0 then
			Dialogue.index = "Bad_1"
		else
			if Compatibility.value >= 4 then
				Dialogue.index = "Good_1"
			else
				Dialogue.index = "Neutral_1"
			end
		end
	end,

	function ()
		Compatibility.increase(0.2)
		if Compatibility.value <= 0 then
			Dialogue.index = "Bad_1"
		else
			if Compatibility.value >= 4 then
				Dialogue.index = "Good_1"
			else
				Dialogue.index = "Neutral_1"
			end
		end
	end,
})


Choice_1 = Branch.new("Lorelai",1,1,
	{
		"Are you majoring in neuroscience too?",
		"Do you like chemistry?",
	},
	{
		function ()
			Likes_Chem = false
			return Red_1
		end,

		function ()
			return Green_1
		end,
	}
)
