Button = {
	x = 200, y = 300, w = 300, h = 100, c = {1,1,1}, f = false, t = 0,
	d = false, i = "", s = "", sx = 0, sy = 0, sc = {0,0,0},
}

function Button:inX(x)
	return ((x >= self.x) and (x <= (self.x + self.w)))
end

function Button:inY(y)
	return ((y >= self.y) and (y <= (self.y + self.h)))
end

function Button:focus(x,y)
	if self:inX(x) and self:inY(y) then
		self.f = true
		self.t = self.t + 1
	else
		self.f = false
		self.t = 0
	end
end

function Button:click(x,y,button)
	if self:inX(x) and self:inY(y) then
		return true
	end
	return false
end

function Button:draw()
	if self.d then
		local s = 1
		local o = 0
		if self.f then
			s = 0.9 * (math.min(self.t,20) / 20)
			o = 5 * (math.min(self.t,20) / 20)
		end
		love.graphics.setColor(self.c[1] * d, self.c[2] * d, self.c[3] * d)
		love.graphics.draw(self.i,self.x,self.y,0,s)
		love.graphics.setColor(1,1,1)
	else
		local d = 1
		local o = 0
		if self.f then
			d = 0.7 * (math.min(self.t,20) / 20)
			o = 5 * (math.min(self.t,20) / 20)
		end
		love.graphics.setColor(self.c[1] * d, self.c[2] * d, self.c[3] * d)
		love.graphics.rectangle("fill",self.x + o,self.y + o,self.w - 2*o,self.h - 2*o)
		love.graphics.setColor(1,1,1)

		love.graphics.print({self.sc,self.s},self.x + self.sx + o, self.y + self.sy + o)
	end
end

function Button.new(x,y,w,h,i,s,sx,sy,sc)
	local tbl = {
		x = x or 0, y = y or 0, w = w or 10, h = h or 10, c = {1,1,1}, f = false, t = 0,
		d = false, i = i or nil, s = s or "", sx = sx or 0, sy = sy or 0, sc = sc or {0,0,0},
	}

	if tbl.i then tbl.d = true end

	local mt = {
		__index = Button,
	}

	return setmetatable(tbl,mt)
end

return Button
