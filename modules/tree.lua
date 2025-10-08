Stem = {}
Stem.string = ""
Stem.char = "Douglass"
Stem.mood = 1
Stem.sfx = ""

function Stem.new(char,mood,string,sfx)
	local tbl = {
		char = char or "Douglass",
		mood = mood or 1,
		string = string or "",
		sfx = sfx or nil,
	}

	local mt = {
		__index = Stem,
	}

	return setmetatable(tbl,mt)
end

Tree = {}
Tree.stems = {}
Tree.link = "END"
Tree.index = 1

function Tree.new(stems,link)
	local tbl = {
		stems = stems or {},
		link = link or "END",
	}

	local mt = {
		__index = Tree,
	}

	return setmetatable(tbl,mt)
end

function Tree:next()
	self.index = self.index + 1
	if self.index > #self.stems then
		return self.link
	end
end

function Tree:get()
	return self.stems[self.index]
end

Branch = {}
Branch.char = "Lorelai"
Branch.mood = 1
Branch.type = 0
Branch.strings = {""}
Branch.options = {function () end}

function Branch.new(char,mood,type,strings,options)
	local tbl = {
		char = char or "Lorelai",
		mood = mood or 1,
		type = type or 0,
		strings = strings or {},
		options = options or {},
	}

	local mt = {
		__index = Branch,
	}

	return setmetatable(tbl,mt)
end