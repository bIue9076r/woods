-- Sound Effects

SFX = {}

function Put(o)
	SFX[#SFX + 1] = o
end

function Pop()
	local r = SFX[#SFX]
	SFX[#SFX] = nil
	return r
end

function Play_Sfx(index)
	local sound = Sound.get(index)
	sound:setVolume(0.125 * SFX_Volume)
	sound:seek(0)
	Put(sound)
end

function Draw_Sfx()
	if #SFX > 1 then
		Pop()
	end
end
