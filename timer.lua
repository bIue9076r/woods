local Timer = {}

Timer.choice_time = 0        -- Time left for current choice
Timer.total_time = 0         -- Time left for entire game
Timer.choice_max = 15        -- Max time per choice (10 seconds)
Timer.total_max = 600        -- Max time for game (5 minutes)
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
    Timer.total_time = Timer.total_time - dt
    -- Handle timeouts
    if Timer.choice_time <= 0 then
        -- Choice timeout, lowers compitability? 
        Timer.reset_choice()
    end    
    if Timer.total_time <= 0 then
        -- Game over
        Timer.total_time = 0
    end
end

return Timer