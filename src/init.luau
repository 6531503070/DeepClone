--!native
--!optimize 2
--!strict

local function DeepClone <T> (t: T & {}): T
	local Clone = table.clone(t)
	for Index, Value in Clone do
		if type(Value) == "table" then
			Clone[Index] = DeepClone(Value :: any)
		end
	end
	return Clone :: any
end

return DeepClone