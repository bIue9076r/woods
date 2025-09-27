local Compatibility= {} 

Compatibility.value = 0 

function Compatibility.init()
    Compatibility.value = 0 
end

-- good/bad choice inc/dec by same amount each time ? 
function Compatibility.increase()
    Compatibility.value = Compatibility.value + 1 
end 

function Compatibility.decrease(amt)
    Compatibility.value = Compatibility.value + 1
    -- end game immediately / timer = 0 when comp = 0? 
    Compatibility.check()
end

function Compatibility.check() 
    if (Compatibility.value == 0) then 
        -- Game over 
    end 
    if (Compatibility.value >= 8) then -- what threshold ? 
    -- Good ending
    end
end

return Compatibility