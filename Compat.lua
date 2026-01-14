-- Compatibility shim for Classic/TBC API differences.
if not CanEditOfficerNote then
	if C_GuildInfo and C_GuildInfo.CanEditOfficerNote then
		function CanEditOfficerNote()
			return C_GuildInfo.CanEditOfficerNote()
		end
	elseif GuildControlGetRankFlags and GetGuildInfo then
		function CanEditOfficerNote()
			local _, _, rankIndex = GetGuildInfo("player")
			if not rankIndex then
				return false
			end
			return not not select(8, GuildControlGetRankFlags(rankIndex))
		end
	else
		function CanEditOfficerNote()
			return false
		end
	end
end

if not GetAddOnInfo then
	if C_AddOns and C_AddOns.GetAddOnInfo then
		function GetAddOnInfo(name)
			return C_AddOns.GetAddOnInfo(name)
		end
	end
end

if not GetNumAddOns then
	if C_AddOns and C_AddOns.GetNumAddOns then
		function GetNumAddOns()
			return C_AddOns.GetNumAddOns()
		end
	end
end

if not GetLootMethod then
	if C_PartyInfo and C_PartyInfo.GetLootMethod then
		function GetLootMethod()
			local method, masterLooterPartyID, masterLooterRaidID = C_PartyInfo.GetLootMethod()
			if type(method) == "number" then
				local enum = Enum and Enum.PartyLootMethod
				if (enum and method == enum.Master) or method == 2 then
					method = "master"
				end
				if (enum and method == enum.FreeForAll) or method == 0 then
					method = "freeforall"
				end
				if (enum and method == enum.RoundRobin) or method == 1 then
					method = "roundrobin"
				end
				if (enum and method == enum.Group) or method == 3 then
					method = "group"
				end
				if (enum and method == enum.NeedBeforeGreed) or method == 4 then
					method = "needbeforegreed"
				end
				if (enum and method == enum.Personal) or method == 5 then
					method = "personalloot"
				end
			end
			return method, masterLooterPartyID, masterLooterRaidID
		end
	elseif C_LootHistory and C_LootHistory.GetLootMethod then
		function GetLootMethod()
			local method, masterLooterPartyID, masterLooterRaidID = C_LootHistory.GetLootMethod()
			if type(method) == "number" then
				local enum = Enum and Enum.PartyLootMethod
				if (enum and method == enum.Master) or method == 2 then
					method = "master"
				end
			end
			return method, masterLooterPartyID, masterLooterRaidID
		end
	end
end

if not InterfaceOptions_AddCategory then
	if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
		function InterfaceOptions_AddCategory(frame)
			local name = frame and (frame.name or frame.Title or frame.title) or "CEPGP"
			local category = Settings.RegisterCanvasLayoutCategory(frame, name)
			Settings.RegisterAddOnCategory(category)
			return category
		end
	end
end

if not InterfaceOptionsFrame_Show then
	if Settings and Settings.OpenToCategory then
		function InterfaceOptionsFrame_Show(category)
			Settings.OpenToCategory(category)
		end
	end
end

if not InterfaceOptionsFrame_OpenToCategory then
	if Settings and Settings.OpenToCategory then
		function InterfaceOptionsFrame_OpenToCategory(category)
			Settings.OpenToCategory(category)
		end
	end
end
