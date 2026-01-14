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
