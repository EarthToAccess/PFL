local pfl = {}

-- created by 0xEARTH
-- version v1.2

function pfl:findp(instr,dtype)
	
	if not ((dtype == 1) or (dtype == 2) or (dtype == 3)) then
		dtype = 3
	end
	
	if instr == nil then
		instr = "N/A"
	end	

	local t = {}
	
	if dtype == 2 then
		if instr == "N/A" then return instr end

		for str in string.gmatch(instr, "([^%s+]+)") do
			table.insert(t, str)
		end

		local pt = {}

		for i,v in pairs(game.Players:GetPlayers()) do
			if table.find(t,v.Name) then
				table.insert(pt,v.Name)
			end
			
			if table.find(t,tostring(v.UserId)) then
				table.insert(pt,v.UserId)
			end
		end

		if #pt == 0 then
			return "N/A"
		else
			return pt
		end
	end
		
	if dtype == 3 then
		
		if instr == "N/A" then return instr end

		local plr
		
		for str in string.gmatch(instr, "([^%s+]+)") do
			table.insert(t, str)
		end
	
		for i,v in pairs(game.Players:GetPlayers()) do
			if table.find(t,v.Name) then
				plr = v.Name
				return plr
			end

			if table.find(t,tostring(v.UserId)) then
				plr = v.UserId
				return plr
			end
		end
		return "N/A"
	end
	
	if dtype == 1 then
		if instr == "N/A" then return instr end

		for str in string.gmatch(instr, "([^%s+]+)") do
			table.insert(t, str)
		end

		local pt = {}

		for i,v in pairs(game.Players:GetPlayers()) do
			if table.find(t,v.Name) then
				table.insert(pt,v.Name)
			end
			
			if table.find(t,tostring(v.UserId)) then
				table.insert(pt,v.UserId)
			end
		end

		if #pt == 0 then
			return "N/A"
		else
			return unpack(pt)
		end
	end
end

return pfl