Response.New("Doug1","Lorelai",1,1,{
	"Are you majoring in neuroscience too?",
	"Do you like chemistry?",
},{
	function ()
		Likes_Chem = false
		Dialogue.index = "Doug1_1_1"
	end,

	function ()
		Dialogue.index = "Doug1_2_1"
	end,
})

Response.New("Doug2","Lorelai",1,0,{
	"I love PC movies.",
	"What types of movies do you like?",
	"Types of films you record?",
	"Why are you a chemistry minor?",
},{
	function ()
		Dialogue.index = "Doug2_1_1"
	end,

	function ()
		Dialogue.index = "Doug2_2_1"
	end,

	function ()
		Dialogue.index = "Doug2_3_1"
	end,

	function ()
		Dialogue.index = "Doug2_4_1"
	end,
})

Response.New("Doug2_2_6","Lorelai",1,1,{
	"Sounds good.",
	"We could see it together?",
},{
	function ()
		Dialogue.index = "Doug2_2_6_1_1"
	end,

	function ()
		if Likes_Chem then
			Dialogue.index = "Doug2_2_6_2_1"
			Compatibility.increase(0.2)
		else
			Dialogue.index = "Doug2_2_6_2_2"
		end
	end,
})

Response.New("Doug2_3_4","Lorelai",1,1,{
	"Not at all. (lie)",
	"Kinda",
},{
	function ()
		Dialogue.index = "Doug2_3_4_1_1"
	end,

	function ()
		Dialogue.index = "Doug2_3_4_2_1"
	end,
})

Response.New("Doug3","Douglass",1,0,{
	"You think you’ll taste just as good?",
	"What kind of coffee did you get?",
	"I just really like cappuccinos.",
	"Do you like coffee?",
},{
	function ()
		Dialogue.index = "Doug3_1_1_1"
	end,

	function ()
		Dialogue.index = "Doug3_1_2_1"
	end,

	function ()
		Dialogue.index = "Doug3_1_3_1"
	end,

	function ()
		Dialogue.index = "Doug3_1_4_1"
	end,
})
