local Compatibility= {}

Compatibility.value = 0

function Compatibility.init()
	Compatibility.value = 0
end

-- good/bad choice inc/dec by amount
function Compatibility.increase(amt)
	Compatibility.value = Compatibility.value + amt
end 

function Compatibility.decrease(amt)
	Compatibility.value = Compatibility.value - amt
	-- end game immediately / timer = 0 when comp = -2 
	-- Compatibility.check()
end

function Compatibility.check() 
	if (Compatibility.value <= -2) then
		-- Game over 
	end
	if (Compatibility.value >= 8) then
		-- Good ending
	end
end

return Compatibility