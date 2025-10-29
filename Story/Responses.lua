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
			Compatibility.decrease(0.2)
			return Red_1
		end,

		function ()
			Compatibility.increase(0.2)
			return Green_1
		end,

		[5] = function ()
			Compatibility.decrease(0.4)
			return No_1
		end
	}
)

Choice_2 = Branch.new("Lorelai",1,0,
	{
		"I love PC movies.",
		"What types of movies do you like?",
		"Types of films you record?",
		"Why are you a chemistry minor?",
	},
	{
		function ()
			return Red_2
		end,

		function ()
			return Green_2
		end,

		function ()
			return Blue_2
		end,

		function ()
			return Purple_2
		end,
	}
)

Choice_2_Green = Branch.new("Lorelai",1,1,
	{
		"Sounds good.",
		"We could see it together?",
	},
	{
		function ()
			return Green_2_Branch_3
		end,

		function ()
			if Compatibility.value >= 0 then
				return Green_2_Branch_1
			else
				return Green_2_Branch_2
			end
		end,
	}
)

Choice_2_Blue = Branch.new("Lorelai",1,1,
	{
		"Not at all. (lie)",
		"Kinda",
	},
	{
		function ()
			return Blue_2_Branch_1
		end,

		function ()
			return Blue_2_Branch_2
		end,
	}
)

Choice_3 = Branch.new("Douglass",1,0,
	{
		"You think you’ll taste just as good?",
		"What kind of coffee did you get?",
		"I just really like cappuccinos.",
		"Do you like coffee?",
	},
	{
		function ()
			return Red_3
		end,

		function ()
			return Green_3
		end,

		function ()
			return Blue_3
		end,

		function ()
			return Purple_3
		end,
	}
)

Choice_3_Red = Branch.new("Douglass",1,1,
	{
		"No I meant your lips.",
		"Yeah. Your coffee.",
	},
	{
		function ()
			if Compatibility.value > 0 then
				return Red_3_Branch_1
			else
				return Red_3_Branch_2
			end
		end,

		function ()
			return Red_3_Branch_3
		end,
	}
)

Choice_3_Green = Branch.new("Douglass",1,1,
	{
		"Call out Doug's lie. (firm)",
		"Call out Doug's lie. (flirt)",
	},
	{
		function ()
			if Compatibility.value <= 0 then
				return Green_3_Branch_1
			else
				return Green_3_Branch_2
			end
		end,

		function ()
			return Green_3_Branch_3
		end,
	}
)

Choice_3_Purple = Branch.new("Douglass",1,1,
	{
		"Study together sometime?",
		"Organic chem sucks.",
	},
	{
		function ()
			if Compatibility.value <= 0 then
				return Purple_3_Branch_1
			else
				return Purple_3_Branch_2
			end
		end,

		function ()
			return Purple_3_Branch_3
		end,
	}
)


Choice_4 = Branch.new("Douglass",1,1,
	{
		"You seem impressed really easily.",
		"I design a lot of clothes.",
	},
	{
		function ()
			return Red_4
		end,

		function ()
			return Green_4
		end,
	}
)

Choice_4_Red = Branch.new("Douglass",1,1,
	{
		"Yeah.",
		"Hell no.",
	},
	{
		function ()
			return Red_4_Branch_1
		end,

		function ()
			return Red_4_Branch_2
		end,
	}
)

Choice_4_Red_Branch_2 = Branch.new("Douglass",1,1,
	{
		"I'd still kiss you though.",
		"...",
	},
	{
		function ()
			if Compatibility.value <= -1 then
				return Red_4_Branch_2_Branch_1
			else
				return Red_4_Branch_2_Branch_2
			end
		end,

		function ()
			return Red_4_Branch_2_Branch_3
		end,
	}
)

Choice_4_Green = Branch.new("Douglass",1,1,
	{
		"I make clothes for cats",
		"Made a corset once",
	},
	{
		function ()
			return Green_4_Branch_1
		end,

		function ()
			return Green_4_Branch_2
		end,
	}
)

Choice_4_Green_Branch_1 = Branch.new("Douglass",1,1,
	{
		"Cat's name",
		"Caring for cat's hard?",
	},
	{
		function ()
			return Green_4_Branch_1_Branch_1
		end,

		function ()
			return Green_4_Branch_1_Branch_2
		end,
	}
)

Choice_4_Green_Branch_2 = Branch.new("Douglass",1,1,
	{
		"I've made a lot of other clothes.",
		"You would look good in a corset.",
	},
	{
		function ()
			return Green_4_Branch_2_Branch_1
		end,

		function ()
			return Green_4_Branch_2_Branch_2
		end,
	}
)
