local Timer = {}

Timer.choice_time = 0		-- Time left for current choice
Timer.choice_max = 15		-- Max time per choice (10 seconds)
Timer.started = false;

function Timer.init() -- Call in globals.lua ?
	Timer.choice_time = Timer.choice_max
end

function Timer.reset_choice()
	Timer.choice_time = Timer.choice_max
end

function Timer.update(dt)
	if not Timer.started then return end
	Timer.choice_time = Timer.choice_time - dt
	-- Handle timeouts
	if Timer.choice_time <= 0 then
		--NoResponse()
		--Compatibility.decrease(0.5)
		Timer.reset_choice()
	end
end

return Timer