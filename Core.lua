--[[ Globals ]]--

SLASH_CEPGP1 = "/CEPGP";
SLASH_CEPGP2 = "/cep";

CEPGP_BACKDROP = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",	
	edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
	tile = true,
	tileEdge = true,
	tileSize = 32,
	edgeSize = 32,
	insets = { left = 11, right = 12, top = 12, bottom = 11 }
};

CEPGP_BACKDROP_POPUP = {
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",	
	edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
	tile = true,
	tileEdge = true,
	tileSize = 32,
	edgeSize = 32,
	insets = { left = 11, right = 12, top = 12, bottom = 11 }
};

CEPGP_BACKDROP_BAGITEMS = {
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",	
	edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
	tile = true,
	tileEdge = true,
	tileSize = 32,
	edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};

CEPGP_BLACK = CreateColor(0, 0, 0);

CEPGP_Info = {
	DistTarget =				"",
	Mode =						"guild",	
		
	Active = 					{false, false},	--	Active state, queried for current raid
	Debug =						false,
	ElvUI =						false,
	--IgnoreUpdates = 			false,
	ImportingTraffic = 			false,
	Initialised =				false,
	Language =					GetDefaultLanguage("player"),
	OverwriteLog =				false,
	RecordExists =				false,
	SyncInProgress = 			false,
	VerboseLogging = 			false,
	VersionNotified = 			false,
	LastUpdate = 				GetTime(),
	TrafficScope = 				1,
	DisableMessageQueue =		false,
	DisableTrafficLogging =		false,
	DisableRosterPolling =		false,
	DisableGuildRosterPolling =	false,
	DisableGroupRosterPolling =	false,
	DisableRosterVersionList =	false,
	DisableRosterAltAutoLink =	false,
	DisableRosterUIUpdates =	false,
	DisableRosterStandbyUpdate = false,
	DisableRosterTrafficChecks = false,
	DisableGuildRosterEPGP =	false,
	DisableGuildRosterPopulate = false,
	DisableGuildRosterAmbiguate = false, 
	DisableGuildRosterTempRoster = false,
	DisableGuildRosterRosterWrite = false,
	DisableGuildRosterPRCalc = false,
	DisableGuildRosterInfoCalls = false,
	DisableGuildRosterStaleMap = false,
	DisableGuildRosterFinalize = false,
	DisableGuildRosterRescan = false,
	DisableGuildRosterCallGroup = false, -- here
	DisableRosterStackCallbacks = false,
	DisableRosterQueuedAnnouncement = false,
	DisableGroupRosterInfoCalls = false, --
	DisableGroupRosterPopulate = false, -- 
	DisableGroupRosterStandby = false, --
	DisableGroupRosterRosterWrite = false, --
	DisableGroupRosterRankLookup = false, --
	DisableGroupRosterEPGP = false, --
	DisableLootUIUpdates =		false,
	DisableLootItemQueries =	false,
	DisableVersionUIUpdates =	false,
	DisableStandbyUIUpdates =	false,
	DisableTrafficUIUpdates =	false,
	DisableGuildUIUpdates =		false,
	DisableRaidUIUpdates =		false,
	DisableAllUIUpdates =		false,
	DisableEventRegistration =	false,
	DisableEventHandling =		false,
	DisableAllTimers =			false,
	DisableRosterWhenUIHidden = true,
	
	Attendance =				{
		SelectedSnapshot =		nil,
	},
	Backups =					{
		ConfirmRestore =		false,
	},
	BossEPFrames =				{
		[1] = CEPGP_EP_options_mc,
		[2] = CEPGP_EP_options_bwl,
		[3] = CEPGP_EP_options_zg,
		[4] = CEPGP_EP_options_aq20,
		[5] = CEPGP_EP_options_aq40,
		[6] = CEPGP_EP_options_naxx,
		[7] = CEPGP_EP_options_worldboss
	},
	ClassColours = 				{
		["DRUID"] = 			{	
			r = 1,	
			g = 0.49,	
			b = 0.04,	
			colorStr = "#FF7D0A"
		},	
		["HUNTER"] = 			{	
			r = 0.67,	
			g = 0.83,	
			b = 0.45,	
			colorStr = "#A9D271"
		},	
		["MAGE"] = 				{	
			r = 0.25,	
			g = 0.78,	
			b = 0.92,	
			colorStr = "#40C7EB"
		},	
		["PALADIN"] = 			{	
			r = 0.96,	
			g = 0.55,	
			b = 0.73,	
			colorStr = "#F58CBA"
		},	
		["PRIEST"] = 			{	
			r = 1,	
			g = 1,	
			b = 1,	
			colorStr = "#FFFFFF"
		},	
		["ROGUE"] = 			{	
			r = 1,	
			g = 0.96,	
			b = 0.41,	
			colorStr = "#FFF569"
		},	
		["SHAMAN"] = 			{	
			r = 0,	
			g = 0.44,	
			b = 0.87,	
			colorStr = "#0070DE"
		},	
		["WARLOCK"] = 			{	
			r = 0.53,	
			g = 0.53,	
			b = 0.93,	
			colorStr = "#8787ED"
		},	
		["WARRIOR"] = 			{	
			r = 0.78,	
			g = 0.61,	
			b = 0.43,	
			colorStr = "#C79C6E"
		}	
	},		
	CoreFrames =				{
		[1] = CEPGP_guild,
		[2] = CEPGP_raid,
		[3] = CEPGP_loot,
		[4] = CEPGP_distribute,
		[5] = CEPGP_context_popup
	},
	Guild =						{
		Polling =				false,
		Rescan =				false,
		Roster =				{
		},
	},
	Import =					{
		List =					{
		},
		Running =				false,
		Source =				"",
		Verbose =				false,
	},
	LastRun = 					{
		DistSB =				0,
		GuildSB = 				0,
		LogSB =					0,
		RaidSB = 				0,
		TrafficSB = 			0,
		VersionSB = 			0,
		ItemCall = 				time()
	},
	Logs = 						{
	},
	Loot =						{
		AwardGP =				false,
		Distributing =			false,
		DistributionID =		"",		--	The equippable slot ID (i.e. INVTYPE_HEAD or INVTYPE_LEGS) type: string
		DistEquipSlot =			0,
		GiveWithEPGP =			false,	--	Flags whether an item is being or not
		GUID =					"",
		ItemsTable =			{
		},
		Master =				"",
		NumOnline =				0,
		Open =					false,
		QueuedAnnouncement =	nil,
		QueuedAward = 			nil,
		AwardRate =				1,
		Respondants =			0,
		SlotNum =				0,		-- ID of the slot in the loot table
		Expired =				true,			
	},	
	LootSchema = 				{
	},	
	MessageStack =				{
	},	
	Override =					{
		ConfirmOverwrite =		false,
	},
	Plugins =					{
	},
	Raid =						{
		Roster =				{
		},
	},
	RosterStack = 				{
	},	
	Sorting = 					{	--	Sorting index, reverse
		Attendance = 			{1, false},
		Guild = 				{4, false},
		Loot = 					{4, false},
		Raid = 					{4, false},
		Standby = 				{1, false},
		Version = 				{1, false},
	},	
	Traffic =					{
		ConfirmClear =			false,
		ImportEntries =			{
		},
		Sharing =				false,
		Source =				""
	},
	Version = 					{
		Number =				"2.2.0",
		Build =					"Release",
		List =					{
		},
		ListSearch =			"GUILD",
	}
};	

CEPGP = {};

local L = LibStub("AceLocale-3.0"):GetLocale("CEPGP");
local LDB = LibStub("LibDataBroker-1.1", true)
local LDBIcon = LDB and LibStub("LibDBIcon-1.0", true)

--[[ EVENT AND COMMAND HANDLER ]]--
function CEPGP_OnEvent(event, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17)
	if CEPGP_Info.DisableEventHandling then
		return;
	end
	
	local function isLootKeyword()
		for i = 1, 4 do
			if string.lower(arg1) == string.lower(CEPGP.Loot.GUI.Buttons[i][4]) then
				return true;
			end
		end
		for _, v in pairs(CEPGP.Loot.ExtraKeywords.Keywords) do
			for key, _ in pairs(v) do
				if string.lower(arg1) == string.lower(key) then
					return true;
				end
			end
		end
		return false;
	end
	
	if event == "ADDON_LOADED" and arg1 == "CEPGP" then --arg1 = addon name
		local success, failMsg = pcall(function()
			CEPGP_initialise();
			CEPGP_initMinimapIcon();
			return;
		end);
		
		C_Timer.After(6, function()
			if not success then
				CEPGP_print("Addon failed to initialise!", true);
				CEPGP_print(failMsg);
			end
		end);
		
	elseif event == "GUILD_ROSTER_UPDATE" or event == "GROUP_ROSTER_UPDATE" then
		CEPGP_rosterUpdate(event);
		return;
	
	elseif event == "GET_ITEM_INFO_RECEIVED" then
		local id, success = arg1, arg2;
		if success then
			CEPGP_updateOverride(id);
		end
		return;
		
	elseif event == "PARTY_LOOT_METHOD_CHANGED" or event == "PLAYER_ROLES_ASSIGNED" then
		if GetLootMethod() == "master" and IsInRaid() and (CEPGP_isML() == 0 or CEPGP_Info.Debug) and not CEPGP_Info.Active[2] then
			_G["CEPGP_confirmation"]:Show();
		else
			_G["CEPGP_confirmation"]:Hide();
		end
		
		if GetLootMethod() ~= "master" or not IsInRaid() or CEPGP_isML() ~= 0 then
			CEPGP_Info.Active[1] = false;
			CEPGP_Info.Active[2] = false;	--	Whenever the loot method, loot master or group type is changed, this will enable the check again
		end
		
		return;
		
	elseif event == "CHAT_MSG_BN_WHISPER" then
		local sender = arg2;
		if not UnitInRaid("player") then return; end
		for i = 1, BNGetNumFriends() do
			local _, accName, _, _, name = BNGetFriendInfo(i);
			local inRaid = false;
			for x = 1, GetNumGroupMembers() do
				if CEPGP_Info.Raid.Roster[x][1] == name then
					inRaid = true;
					break;
				end
			end
			if sender == accName then --Behaves the same way for both Battle Tag and RealID friends
				if string.lower(arg1) == string.lower(CEPGP.Standby.Keyword) then
					if (CEPGP.Standby.Manual and CEPGP.Standby.AcceptWhispers) and
						not CEPGP_tContains(CEPGP.Standby.Roster, name) and not inRaid and CEPGP_Info.Guild.Roster[name] then
						CEPGP_addToStandby(name);
					end
				elseif (isLootKeyword() and CEPGP_Info.Loot.Distributing) or
						(string.lower(arg1) == "!info" or string.lower(arg1) == "!infoguild" or
						string.lower(arg1) == "!inforaid" or string.lower(arg1) == "!infoclass") then
						CEPGP_handleComms("CHAT_MSG_WHISPER", arg1, name);
				end
				return;
			end
		end
		return;
	
	elseif event == "CHAT_MSG_WHISPER" and string.lower(arg1) == string.lower(CEPGP.Standby.Keyword) and CEPGP.Standby.Manual and CEPGP.Standby.AcceptWhispers then	
		if not CEPGP_tContains(CEPGP.Standby.Roster, arg5)
		and not CEPGP_tContains(CEPGP_Info.Raid.Roster, arg5, true)
		and CEPGP_Info.Guild.Roster[arg5] then
			CEPGP_addToStandby(arg5);
		end
		return;
			
	elseif (event == "CHAT_MSG_WHISPER" and isLootKeyword() and CEPGP_Info.Loot.Distributing) or
		(event == "CHAT_MSG_WHISPER" and string.lower(arg1) == "!info") or
		(event == "CHAT_MSG_WHISPER" and (string.lower(arg1) == "!infoguild" or string.lower(arg1) == "!inforaid" or string.lower(arg1) == "!infoclass")) then
			--	arg1 - message | arg5 - sender
			CEPGP_handleComms(event, arg1, arg5);
			return;
	
	elseif (event == "CHAT_MSG_ADDON") or (event == "CHAT_MSG_ADDON_LOGGED") then
		if (arg1 == "CEPGP")then
			local message = arg2;
			local channel = arg3;
			local sender = arg5;
			CEPGP_IncAddonMsg(message, channel, sender);
		end
		return;
	end
	
	if CEPGP_Info.Active[1] or CEPGP_Info.Debug then --EPGP and loot distribution related 
		--	An encounter has been defeated
		local function handleEncounter(event, arg1, arg5)
			if event == "ENCOUNTER_END" and arg5 == 1 then
				local id = tonumber(arg1);
				local name = CEPGP_EncounterInfo.ID[id];
				if name then
					if CEPGP.EP.AutoAward[name] and tonumber(CEPGP.EP.BossEP[name]) > 0 then
						CEPGP_handleCombat(name);
					end
				else
				end
				return;
			end
		end
		
		local success, failMsg = pcall(handleEncounter, event, arg1, arg5);
		
		if not success then
			CEPGP_print("Failed to award GP for encounter!", true);
			CEPGP_print(failMsg, true);
		end
		
		if (event == "LOOT_OPENED" or event == "LOOT_CLOSED" or event == "LOOT_SLOT_CLEARED") then
			CEPGP_handleLoot(event, arg1, arg2);
		end
	end
	
end

local function CEPGP_countTableKeys(t)
	if type(t) ~= "table" then
		return 0;
	end
	local n = 0;
	for _ in pairs(t) do
		n = n + 1;
	end
	return n;
end

local function CEPGP_countFrames()
	local n = 0;
	local f = EnumerateFrames();
	while f do
		n = n + 1;
		f = EnumerateFrames(f);
	end
	return n;
end

local function CEPGP_printMemory(mode)
	collectgarbage("collect");
	UpdateAddOnMemoryUsage();
	local addonMB = GetAddOnMemoryUsage("CEPGP") / 1024;
	local luaKB = collectgarbage("count");
	local luaMB = luaKB / 1024;
	CEPGP_print(string.format("Memory: CEPGP %.2f MB, Lua %.2f MB (%.0f KB)", addonMB, luaMB, luaKB));
	if mode == "frames" or mode == "verbose" then
		CEPGP_print("Frames: " .. CEPGP_countFrames());
	end
	if mode == "tables" or mode == "verbose" then
		if CEPGP then
			CEPGP_print("CEPGP root: " .. CEPGP_countTableKeys(CEPGP));
			for k, v in pairs(CEPGP) do
				if type(v) == "table" then
					CEPGP_print("CEPGP." .. k .. ": " .. CEPGP_countTableKeys(v));
				end
			end
		end
		if CEPGP_Info then
			CEPGP_print("Info root: " .. CEPGP_countTableKeys(CEPGP_Info));
			for k, v in pairs(CEPGP_Info) do
				if type(v) == "table" then
					CEPGP_print("Info." .. k .. ": " .. CEPGP_countTableKeys(v));
				end
			end
		end
	end
end

local CEPGP_TimerStats = {
	after = 0,
	ticker = 0,
	activeTickers = 0,
	lastAfter = {},
	lastTicker = {},
	afterSites = {},
	tickerSites = {},
	wrapped = false
};

local function CEPGP_pushTimerLog(list, entry)
	if not entry or entry == "" then return; end
	list[#list + 1] = entry;
	if #list > 10 then
		table.remove(list, 1);
	end
end

local function CEPGP_wrapTimers()
	if CEPGP_TimerStats.wrapped or not C_Timer then return; end
	-- Do not override C_Timer.*; patching global timer APIs taints secure code.
	CEPGP_TimerStats.wrapped = true;
end

local function CEPGP_printTimerStats(verbose)
	CEPGP_wrapTimers();
	CEPGP_print(string.format("Timers: After=%d, Tickers=%d, ActiveTickers=%d", CEPGP_TimerStats.after, CEPGP_TimerStats.ticker, CEPGP_TimerStats.activeTickers));
	if verbose then
		CEPGP_print("Recent After call sites:");
		for i = 1, #CEPGP_TimerStats.lastAfter do
			CEPGP_print(CEPGP_TimerStats.lastAfter[i]);
		end
		CEPGP_print("Recent NewTicker call sites:");
		for i = 1, #CEPGP_TimerStats.lastTicker do
			CEPGP_print(CEPGP_TimerStats.lastTicker[i]);
		end
	end
end

local function CEPGP_printTimerSites(siteTable, title, topN)
	local list = {};
	for k, v in pairs(siteTable) do
		list[#list + 1] = {k, v};
	end
	table.sort(list, function(a, b) return a[2] > b[2]; end);
	CEPGP_print(title .. ":");
	for i = 1, math.min(#list, topN) do
		CEPGP_print(string.format("%d) %d - %s", i, list[i][2], list[i][1]));
	end
end

local function CEPGP_memDeepScan(rootName, root, maxNodes, maxDepth, topN)
	local seen = {};
	local stack = {};
	local scanned = 0;
	local tables = 0;
	local strings = 0;
	local stringBytes = 0;
	local largest = {};
	local cut = false;
	local timeStart = GetTime();
	local timeLimit = 0.35;

	if type(root) ~= "table" then
		return {
			scanned = 0,
			tables = 0,
			strings = 0,
			stringBytes = 0,
			largest = {},
			cut = false
		};
	end
	
	stack[#stack + 1] = {root, rootName, 0};
	
	while #stack > 0 do
		local node = stack[#stack];
		stack[#stack] = nil;
		local t, path, depth = node[1], node[2], node[3];
		if not seen[t] then
			seen[t] = true;
			tables = tables + 1;
			for k, v in pairs(t) do
				scanned = scanned + 1;
				if scanned >= maxNodes or GetTime() - timeStart > timeLimit then
					cut = true;
					stack = {};
					break;
				end
				local kPath;
				if type(k) == "string" then
					kPath = path .. "." .. k;
				else
					kPath = path .. "[" .. tostring(k) .. "]";
				end
				local vType = type(v);
				if vType == "string" then
					local len = string.len(v);
					strings = strings + 1;
					stringBytes = stringBytes + len;
					if #largest < topN then
						largest[#largest + 1] = {len, kPath, v};
					elseif len > largest[1][1] then
						largest[1] = {len, kPath, v};
					end
					if #largest > 1 then
						table.sort(largest, function(a, b) return a[1] < b[1]; end);
					end
				elseif vType == "table" and depth < maxDepth then
					stack[#stack + 1] = {v, kPath, depth + 1};
				end
			end
		end
	end
	
	return {
		scanned = scanned,
		tables = tables,
		strings = strings,
		stringBytes = stringBytes,
		largest = largest,
		cut = cut
	};
end

local function CEPGP_printDeepMemory(maxNodes, maxDepth, topN)
	CEPGP_print(string.format("Deep scan (nodes=%d depth=%d top=%d)", maxNodes, maxDepth, topN));
	local info = CEPGP_memDeepScan("CEPGP", CEPGP, maxNodes, maxDepth, topN);
	local info2 = CEPGP_memDeepScan("CEPGP_Info", CEPGP_Info, maxNodes, maxDepth, topN);
	local totalStrings = info.strings + info2.strings;
	local totalBytes = info.stringBytes + info2.stringBytes;
	local totalTables = info.tables + info2.tables;
	local totalScanned = info.scanned + info2.scanned;
	CEPGP_print(string.format("Scanned %d nodes, %d tables, %d strings, %.2f KB strings", totalScanned, totalTables, totalStrings, totalBytes / 1024));
	if info.cut or info2.cut then
		CEPGP_print("Scan cut short (limits reached). Increase limits if needed.");
	end
	local combined = {};
	for _, v in ipairs(info.largest) do combined[#combined + 1] = v; end
	for _, v in ipairs(info2.largest) do combined[#combined + 1] = v; end
	if #combined > 1 then
		table.sort(combined, function(a, b) return a[1] > b[1]; end);
	end
	CEPGP_print("Largest strings:");
	for i = 1, math.min(#combined, topN) do
		local entry = combined[i];
		local size = entry[1];
		local path = entry[2];
		local sample = entry[3];
		if string.len(sample) > 120 then
			sample = string.sub(sample, 1, 120) .. "...";
		end
		CEPGP_print(string.format("%d) %d bytes @ %s : %s", i, size, path, sample));
	end
end

local function CEPGP_memTableSizeScan(rootName, root, maxNodes, maxDepth, topN)
	local seen = {};
	local stack = {};
	local scanned = 0;
	local cut = false;
	local timeStart = GetTime();
	local timeLimit = 0.35;
	local tables = {};
	local totals = {
		tables = 0,
		strings = 0,
		stringBytes = 0,
		numbers = 0,
		booleans = 0,
		userdata = 0,
		functions = 0,
		threads = 0
	};

	if type(root) ~= "table" then
		return {tables = {}, totals = totals, scanned = 0, cut = false};
	end

	stack[#stack + 1] = {root, rootName, 0};

	while #stack > 0 do
		local node = stack[#stack];
		stack[#stack] = nil;
		local t, path, depth = node[1], node[2], node[3];
		if not seen[t] then
			seen[t] = true;
			totals.tables = totals.tables + 1;
			local entryCount = 0;
			local strBytes = 0;
			local strCount = 0;
			local numCount = 0;
			local boolCount = 0;
			local userCount = 0;
			local funcCount = 0;
			local threadCount = 0;
			local subCount = 0;
			for k, v in pairs(t) do
				scanned = scanned + 1;
				entryCount = entryCount + 1;
				if scanned >= maxNodes or GetTime() - timeStart > timeLimit then
					cut = true;
					stack = {};
					break;
				end
				local vType = type(v);
				if vType == "string" then
					local len = string.len(v);
					strBytes = strBytes + len;
					strCount = strCount + 1;
					totals.strings = totals.strings + 1;
					totals.stringBytes = totals.stringBytes + len;
				elseif vType == "number" then
					numCount = numCount + 1;
					totals.numbers = totals.numbers + 1;
				elseif vType == "boolean" then
					boolCount = boolCount + 1;
					totals.booleans = totals.booleans + 1;
				elseif vType == "userdata" then
					userCount = userCount + 1;
					totals.userdata = totals.userdata + 1;
				elseif vType == "function" then
					funcCount = funcCount + 1;
					totals.functions = totals.functions + 1;
				elseif vType == "thread" then
					threadCount = threadCount + 1;
					totals.threads = totals.threads + 1;
				elseif vType == "table" then
					subCount = subCount + 1;
					local kPath;
					if type(k) == "string" then
						kPath = path .. "." .. k;
					else
						kPath = path .. "[" .. tostring(k) .. "]";
					end
					if depth < maxDepth then
						stack[#stack + 1] = {v, kPath, depth + 1};
					end
				end
			end
			tables[#tables + 1] = {
				path = path,
				entries = entryCount,
				strBytes = strBytes,
				strCount = strCount,
				numCount = numCount,
				boolCount = boolCount,
				userCount = userCount,
				funcCount = funcCount,
				threadCount = threadCount,
				subCount = subCount
			};
		end
	end

	return {tables = tables, totals = totals, scanned = scanned, cut = cut};
end

local function CEPGP_printTableSizeScan(maxNodes, maxDepth, topN, sortBy)
	local info = CEPGP_memTableSizeScan("CEPGP", CEPGP, maxNodes, maxDepth, topN);
	local info2 = CEPGP_memTableSizeScan("CEPGP_Info", CEPGP_Info, maxNodes, maxDepth, topN);
	local combined = {};
	for _, v in ipairs(info.tables) do combined[#combined + 1] = v; end
	for _, v in ipairs(info2.tables) do combined[#combined + 1] = v; end

	local key = "entries";
	if sortBy == "strings" then
		key = "strBytes";
	elseif sortBy == "subs" then
		key = "subCount";
	end
	table.sort(combined, function(a, b) return (a[key] or 0) > (b[key] or 0); end);

	local totals = {
		tables = info.totals.tables + info2.totals.tables,
		strings = info.totals.strings + info2.totals.strings,
		stringBytes = info.totals.stringBytes + info2.totals.stringBytes,
		numbers = info.totals.numbers + info2.totals.numbers,
		booleans = info.totals.booleans + info2.totals.booleans,
		userdata = info.totals.userdata + info2.totals.userdata,
		functions = info.totals.functions + info2.totals.functions,
		threads = info.totals.threads + info2.totals.threads
	};
	local scanned = info.scanned + info2.scanned;
	CEPGP_print(string.format("Table scan (nodes=%d depth=%d sort=%s)", maxNodes, maxDepth, sortBy));
	CEPGP_print(string.format("Scanned %d nodes, %d tables", scanned, totals.tables));
	CEPGP_print(string.format("Totals: strings=%d (%.2f KB), numbers=%d, booleans=%d, userdata=%d, functions=%d, threads=%d",
		totals.strings, totals.stringBytes / 1024, totals.numbers, totals.booleans, totals.userdata, totals.functions, totals.threads));
	if info.cut or info2.cut then
		CEPGP_print("Scan cut short (limits reached). Increase limits if needed.");
	end
	CEPGP_print("Top tables:");
	for i = 1, math.min(#combined, topN) do
		local t = combined[i];
		CEPGP_print(string.format(
			"%d) %s entries=%d strings=%d (%.2f KB) nums=%d subs=%d",
			i, t.path, t.entries, t.strCount, t.strBytes / 1024, t.numCount, t.subCount
		));
	end
end

local function CEPGP_getLib(libName)
	if not LibStub or not libName then return nil; end
	local ok, lib = pcall(function()
		return LibStub:GetLibrary(libName, true);
	end);
	if ok then return lib; end
	return nil;
end

local function CEPGP_printLibScan(maxNodes, maxDepth)
	local libs = {
		"AceAddon-3.0",
		"AceLocale-3.0",
		"CallbackHandler-1.0",
		"LibDataBroker-1.1",
		"LibDBIcon-1.0",
		"LibUIDropDownMenu-4.0",
		"LibUIDropDownMenu-3.0"
	};
	CEPGP_print(string.format("Lib scan (nodes=%d depth=%d)", maxNodes, maxDepth));
	if LibStub then
		local info = CEPGP_memTableSizeScan("LibStub", LibStub, maxNodes, math.min(maxDepth, 6), 0);
		CEPGP_print(string.format("LibStub: tables=%d strings=%d (%.2f KB) nums=%d user=%d func=%d",
			info.totals.tables, info.totals.strings, info.totals.stringBytes / 1024, info.totals.numbers, info.totals.userdata, info.totals.functions));
	end
	for _, name in ipairs(libs) do
		local lib = CEPGP_getLib(name);
		if lib then
			local info = CEPGP_memTableSizeScan(name, lib, maxNodes, maxDepth, 0);
			CEPGP_print(string.format("%s: tables=%d strings=%d (%.2f KB) nums=%d user=%d func=%d%s",
				name, info.totals.tables, info.totals.strings, info.totals.stringBytes / 1024, info.totals.numbers, info.totals.userdata, info.totals.functions,
				(info.cut and " [cut]" or "")));
		end
	end
end

local function CEPGP_printLibStubDetail(maxNodes, maxDepth, topN, sortBy)
	if not LibStub then
		CEPGP_print("LibStub not available");
		return;
	end
	local info = CEPGP_memTableSizeScan("LibStub", LibStub, maxNodes, maxDepth, 0);
	local combined = info.tables or {};
	local key = "entries";
	if sortBy == "strings" then
		key = "strBytes";
	elseif sortBy == "subs" then
		key = "subCount";
	end
	table.sort(combined, function(a, b) return (a[key] or 0) > (b[key] or 0); end);
	CEPGP_print(string.format("LibStub detail (nodes=%d depth=%d sort=%s)", maxNodes, maxDepth, sortBy));
	CEPGP_print(string.format("LibStub totals: tables=%d strings=%d (%.2f KB) nums=%d user=%d func=%d",
		info.totals.tables, info.totals.strings, info.totals.stringBytes / 1024, info.totals.numbers, info.totals.userdata, info.totals.functions));
	if info.cut then
		CEPGP_print("Scan cut short (limits reached). Increase limits if needed.");
	end
	CEPGP_print("Top LibStub tables:");
	for i = 1, math.min(#combined, topN) do
		local t = combined[i];
		CEPGP_print(string.format(
			"%d) %s entries=%d strings=%d (%.2f KB) nums=%d subs=%d",
			i, t.path, t.entries, t.strCount, t.strBytes / 1024, t.numCount, t.subCount
		));
	end
end

local function CEPGP_printAddonMemory(topN)
	UpdateAddOnMemoryUsage();
	local list = {};
	for i = 1, GetNumAddOns() do
		local name = GetAddOnInfo(i);
		if name and IsAddOnLoaded(name) then
			local kb = GetAddOnMemoryUsage(name);
			list[#list + 1] = {name, kb};
		end
	end
	table.sort(list, function(a, b) return a[2] > b[2]; end);
	CEPGP_print("Top addon memory (KB):");
	for i = 1, math.min(#list, topN) do
		CEPGP_print(string.format("%d) %s: %.0f KB", i, list[i][1], list[i][2]));
	end
end

local function CEPGP_scanUI(scope, maxFrames)
	local countFrames = 0;
	local countTextures = 0;
	local countFontStrings = 0;
	local textBytes = 0;
	local scanned = 0;
	local f = EnumerateFrames();
	while f do
		scanned = scanned + 1;
		if maxFrames and scanned > maxFrames then
			break;
		end
		local name = f.GetName and f:GetName() or nil;
		local match = false;
		if scope == "all" then
			match = true;
		elseif name and string.sub(name, 1, 6) == "CEPGP_" then
			match = true;
		end
		if match then
			countFrames = countFrames + 1;
			local regions = {f:GetRegions()};
			for i = 1, #regions do
				local r = regions[i];
				local rType = r and r.GetObjectType and r:GetObjectType() or nil;
				if rType == "Texture" then
					countTextures = countTextures + 1;
				elseif rType == "FontString" then
					countFontStrings = countFontStrings + 1;
					local text = r:GetText();
					if text then
						textBytes = textBytes + string.len(text);
					end
				end
			end
		end
		f = EnumerateFrames(f);
	end
	CEPGP_print(string.format("UI scan (%s): frames=%d textures=%d fontstrings=%d text=%.2f KB scanned=%d%s",
		scope, countFrames, countTextures, countFontStrings, textBytes / 1024, scanned, (maxFrames and " (capped)" or "")));
end

function SlashCmdList.CEPGP(msg, editbox)
	msg = string.lower(msg or "");
	local args = {};
	for w in string.gmatch(msg, "%S+") do
		args[#args + 1] = w;
	end
	local cmd = args[1] or "";
	
	if cmd == "" then
		CEPGP_print("Classic EPGP Usage");
		CEPGP_print("|cFF80FF80show|r - |cFFFF8080Manually shows the CEPGP window|r");
		CEPGP_print("|cFF80FF80version|r - |cFFFF8080Checks the version of the addon everyone in your raid is running|r");
		CEPGP_print("|cFF80FF80options or config|r - |cFFFF8080Opens the configuration menu for CEPGP|r");
	
	elseif cmd == "show" or cmd == "open" then
		CEPGP_populateFrame();
		ShowUIPanel(CEPGP_frame);
		CEPGP_toggleFrame("");
	
	elseif cmd == "options" or cmd == "opt" or cmd == "config" or cmd == "conf" then
		InterfaceOptionsFrame_Show();
		InterfaceOptionsFrame_OpenToCategory("Classic EPGP");
		
	elseif cmd == "traffic" then
		ShowUIPanel(CEPGP_traffic);
	
	elseif cmd == "version" or cmd == "ver" then
		CEPGP_Info.Version.List = {};
		CEPGP_Info.Version.ListSearch = "GUILD";
		for i = 1, GetNumGuildMembers() do
			local name, _, _, _, class, _, _, _, online, _, classFileName = GetGuildRosterInfo(i);
			name = Ambiguate(name, "all");
			if online then
				CEPGP_Info.Version.List[name] = CEPGP_Info.Version.List[name] or {
					[1] = "Addon not enabled",
					[2] = class,
					[3] = classFileName,
				};
			else
				CEPGP_Info.Version.List[name] = {
					[1] = "Offline",
					[2] = class,
					[3] = classFileName
				};
			end
		end
		CEPGP_addAddonMsg("version-check", "GUILD");
		ShowUIPanel(CEPGP_version);
		if CEPGP_version:IsVisible() then
			CEPGP_UpdateVersionScrollBar();
		end
		
	elseif cmd == "debugmode" then
		CEPGP_Info.Debug = not CEPGP_Info.Debug;
		if CEPGP_Info.Debug then
			CEPGP_print("Debug Mode Enabled");
		else
			CEPGP_print("Debug Mode Disabled");
		end
	
	elseif cmd == "log" then
		CEPGP_log:Show();
		
	elseif cmd == "mem" or cmd == "memory" then
		local mode = args[2] or "";
		if mode == "" then
			CEPGP_printMemory("basic");
		elseif mode == "frames" or mode == "tables" or mode == "verbose" then
			CEPGP_printMemory(mode);
		elseif mode == "deep" then
			local maxNodes = tonumber(args[3]) or 5000;
			local maxDepth = tonumber(args[4]) or 8;
			local topN = tonumber(args[5]) or 10;
			CEPGP_printMemory("basic");
			CEPGP_printDeepMemory(maxNodes, maxDepth, topN);
		elseif mode == "tablesize" or mode == "tsize" then
			local maxNodes = tonumber(args[3]) or 20000;
			local maxDepth = tonumber(args[4]) or 12;
			local topN = tonumber(args[5]) or 15;
			local sortBy = args[6] or "entries"; -- entries|strings|subs
			CEPGP_printMemory("basic");
			CEPGP_printTableSizeScan(maxNodes, maxDepth, topN, sortBy);
		elseif mode == "libs" then
			local maxNodes = tonumber(args[3]) or 20000;
			local maxDepth = tonumber(args[4]) or 12;
			CEPGP_printMemory("basic");
			CEPGP_printLibScan(maxNodes, maxDepth);
		elseif mode == "libstub" then
			local maxNodes = tonumber(args[3]) or 50000;
			local maxDepth = tonumber(args[4]) or 20;
			local topN = tonumber(args[5]) or 20;
			local sortBy = args[6] or "entries";
			CEPGP_printMemory("basic");
			CEPGP_printLibStubDetail(maxNodes, maxDepth, topN, sortBy);
		elseif mode == "addons" then
			local topN = tonumber(args[3]) or 15;
			CEPGP_printMemory("basic");
			CEPGP_printAddonMemory(topN);
		elseif mode == "ui" then
			local scope = args[3] or "cepgp";
			local maxFrames = tonumber(args[4]);
			if scope ~= "cepgp" and scope ~= "all" then
				CEPGP_print("Usage: /CEPGP mem ui [cepgp|all] [maxFrames]");
			else
				CEPGP_printMemory("basic");
				CEPGP_scanUI(scope, maxFrames);
			end
		elseif mode == "timers" then
			local sub = args[3] or "";
			if sub == "reset" then
				CEPGP_TimerStats.after = 0;
				CEPGP_TimerStats.ticker = 0;
				CEPGP_TimerStats.activeTickers = 0;
				CEPGP_TimerStats.lastAfter = {};
				CEPGP_TimerStats.lastTicker = {};
				CEPGP_TimerStats.afterSites = {};
				CEPGP_TimerStats.tickerSites = {};
				CEPGP_print("Timer stats reset");
			elseif sub == "report" then
				local topN = tonumber(args[4]) or 5;
				CEPGP_printTimerStats(false);
				CEPGP_printTimerSites(CEPGP_TimerStats.afterSites, "Top After sites", topN);
				CEPGP_printTimerSites(CEPGP_TimerStats.tickerSites, "Top Ticker sites", topN);
			else
				CEPGP_printTimerStats(sub == "verbose");
			end
		else
			CEPGP_print("Usage: /CEPGP mem [frames||tables||verbose||deep||tablesize||libs||libstub||addons||ui||timers] [maxNodes] [maxDepth] [topN] [sort]");
			CEPGP_print("Sort options for tablesize: entries||strings||subs");
			CEPGP_print("Timers: /CEPGP mem timers [verbose|reset|report] [topN]");
			CEPGP_print("UI: /CEPGP mem ui [cepgp|all] [maxFrames]");
		end
		
	else
		CEPGP_print("|cFF80FF80" .. msg .. "|r |cFFFF8080is not a valid request. Type /CEPGP to check addon usage|r", true);
	end
end

function CEPGP_initMinimapIcon()
    if LDB then
        local MinimapBtn = LDB:NewDataObject("CEPGP", {
            type = "launcher",
			text = "CEPGP",
            icon = "Interface\\AddOns\\CEPGP\\Icons\\icon",
            OnClick = function(self, button)
				if button == "LeftButton" then
					CEPGP_frame:Show();
				elseif button == "RightButton" then
					InterfaceOptionsFrame_Show();
					InterfaceOptionsFrame_OpenToCategory("Classic EPGP");
				elseif button == "MiddleButton" then
					CEPGP_Info.Version.List = {};
					CEPGP_Info.Version.ListSearch = "GUILD";
					for i = 1, GetNumGuildMembers() do
						local name, _, _, _, class, _, _, _, online, _, classFileName = GetGuildRosterInfo(i);
						name = Ambiguate(name, "all");
						if online then
							CEPGP_Info.Version.List[name] = CEPGP_Info.Version.List[name] or {
								[1] = "Addon not enabled",
								[2] = class,
								[3] = classFileName,
							};
						else
							CEPGP_Info.Version.List[name] = {
								[1] = "Offline",
								[2] = class,
								[3] = classFileName
							};
						end
					end
					CEPGP_addAddonMsg("version-check", "GUILD");
					ShowUIPanel(CEPGP_version);
					if CEPGP_version:IsVisible() then
						CEPGP_UpdateVersionScrollBar();
					end
				end
			end,
			OnEnter = function(self)
				local inRaidText = "\nCEPGP is " .. (CEPGP_Info.Active[1] and "|cFF00FF00active|r|c00FFC100" or "|cFFFF0000inactive|r|c00FFC100") .. " for this raid\n";
				local text = "|c00FFC100Classic EPGP <Obsidian>\nVersion: " .. CEPGP_Info.Version.Number .. " " .. CEPGP_Info.Version.Build .. "|r\n" .. ((IsInRaid() and CEPGP_isML() == 0) and inRaidText or "") .. "\nLeft Click: Show the main CEPGP window\nMiddle Click: View CEPGP version information\nRight Click: Open the CEPGP configuration";
				GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
				GameTooltip:SetText(text);
			end,
			OnLeave = function()
				GameTooltip:Hide();
			end
        });
        if LDBIcon then
            LDBIcon:Register("CEPGP", MinimapBtn, CEPGP.Minimap);
        end
    end
end

function CEPGP_toggleMinimapButton()
	CEPGP.Minimap.hide = not CEPGP.Minimap.hide;
	if CEPGP.Minimap.hide then
		LDBIcon:Hide("CEPGP")
	else
		LDBIcon:Show("CEPGP");
	end
end

function CEPGP_toggleMinimapState(state)
	local activepath = "Interface\\AddOns\\CEPGP\\Icons\\icon";
	local inactivepath = "Interface\\AddOns\\CEPGP\\Icons\\icon_inactive";
	
	LDBIcon:IconCallback(nil, "CEPGP", "icon", (state and activepath or inactivepath));
end

--[[ LOOT COUNCIL FUNCTIONS ]]--

function CEPGP_RaidAssistLootClosed()
	HideUIPanel(CEPGP_distributing_button);
	if CEPGP_loot:IsVisible() or CEPGP_distribute:IsVisible() then
		HideUIPanel(CEPGP_distribute_popup);
		HideUIPanel(CEPGP_loot_distributing);
		HideUIPanel(CEPGP_frame);
		--CEPGP_distribute_item_tex:SetBackdrop(nil);
		_G["CEPGP_distribute_item_tex"]:SetScript('OnEnter', function() end);
		_G["CEPGP_distribute_item_name_frame"]:SetScript('OnClick', function() end);
	end
	CEPGP_UpdateLootScrollBar();
end

function CEPGP_RaidAssistLootDist(link, gp, raidwide) --raidwide refers to whether or not the ML would like everyone in the raid to be able to see the distribution window
	if ((UnitIsGroupLeader("player") or UnitIsGroupAssistant("player")) and CEPGP_isML() ~= 0) or raidwide then --Only returns true if the unit is raid ASSIST, not raid leader
		ShowUIPanel(CEPGP_distributing_button);
	end
	
	if raidwide and CEPGP.Loot.AutoShow then
		ShowUIPanel(CEPGP_frame);
		CEPGP_toggleFrame("CEPGP_distribute");
	end
end

--[[ ADD EPGP FUNCTIONS ]]--

function CEPGP_AddRaidEP(amount, msg, encounter)
	amount = math.floor(amount);
	local success, failMsg = pcall(function()
		local function update()
			if msg ~= "" and msg ~= nil or encounter then
				if encounter then -- a boss was killed
					CEPGP_addTraffic("Raid", UnitName("player"), "Add Raid EP +" .. amount .. " - " .. encounter, "", "", "", "", "", time());
					CEPGP_sendChatMessage(msg, CEPGP.Channel);
				else -- EP was manually given, could be either positive or negative, and a message was written
					if tonumber(amount) <= 0 then
						CEPGP_addTraffic("Raid", UnitName("player"), "Subtract Raid EP -" .. amount .. " (" .. msg .. ")", "", "", "", "", "", time());
						CEPGP_sendChatMessage(amount .. " EP taken from all raid members (" .. msg .. ")", CEPGP.Channel);
					else
						CEPGP_addTraffic("Raid", UnitName("player"), "Add Raid EP +" .. amount .. " (" .. msg .. ")", "", "", "", "", "", time());
						CEPGP_sendChatMessage(amount .. " EP awarded to all raid members (" .. msg .. ")", CEPGP.Channel);
					end
				end
			else -- no message was written
				if tonumber(amount) <= 0 then
					amount = string.sub(amount, 2, string.len(amount));
					CEPGP_addTraffic("Raid", UnitName("player"), "Subtract Raid EP -" .. amount, "", "", "", "", "", time());
					CEPGP_sendChatMessage(amount .. " EP taken from all raid members", CEPGP.Channel);
				else
					CEPGP_addTraffic("Raid", UnitName("player"), "Add Raid EP +" .. amount, "", "", "", "", "", time());
					CEPGP_sendChatMessage(amount .. " EP awarded to all raid members", CEPGP.Channel);
				end
			end
			if _G["CEPGP_traffic"]:IsVisible() then
				CEPGP_UpdateTrafficScrollBar();
			end
		end
		
		local alts = {};
		local roster = {};
		local syncEP, syncGP = CEPGP.Alt.SyncEP, CEPGP.Alt.SyncGP;
		
		for main, data in pairs(CEPGP.Alt.Links) do
			for _, alt in ipairs(data) do
				if CEPGP_Info.Guild.Roster[alt] and CEPGP_Info.Guild.Roster[main] then
					alts[alt] = main;
				end
			end
		end
		
		for _, data in pairs(CEPGP_Info.Raid.Roster) do
			local name = data[1];
			if CEPGP_Info.Guild.Roster[name] then
				local EP, GP = CEPGP_getEPGP(name, index);
				roster[name] = {
					[1] = CEPGP_Info.Guild.Roster[name][1],
					[2] = EP + amount,
					[3] = GP
				}
				if alts[name] then
					for alt, main in pairs(alts) do
						if alt ~= name and roster[alt] and main == alts[name] and syncEP then
							roster[name] = nil;	--	Ensures no sibling alts are present in the roster
						end
						if roster[alt] and roster[main] then
							roster[alt] = nil;	--	Ensures no alt and main pairs exist within the raid roster
						end
					end
				end
			end
		end
		
		for name, data in pairs(roster) do
			if alts[name] then
				if not CEPGP.Alt.BlockAwards then
					local main = alts[name];
					local mainIndex = CEPGP_getIndex(main, CEPGP_Info.Guild.Roster[main][1]);
					local mEP, mGP = CEPGP_getEPGP(main, mainIndex);
					mEP = mEP + amount;
					
					if syncEP then
						GuildRosterSetOfficerNote(mainIndex, mEP .. "," .. mGP);
						
						for _, alt in pairs(CEPGP.Alt.Links[main]) do
							if CEPGP_Info.Guild.Roster[alt] then
								local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
								local EP, GP = CEPGP_getEPGP(alt, altIndex);
								
								if syncEP and syncGP then
									GuildRosterSetOfficerNote(altIndex, mEP .. "," .. mGP);
								elseif syncEP then
									GuildRosterSetOfficerNote(altIndex, mEP .. "," .. GP);
								elseif syncGP then
									GuildRosterSetOfficerNote(altIndex, EP .. "," .. mGP);
								end
							end
						end
					else
						local index = CEPGP_getIndex(name, roster[name][1]);
						local EP, GP = CEPGP_getEPGP(name, index);
						EP = EP + amount;
						GuildRosterSetOfficerNote(index, EP .. "," .. GP);
					end
				end
			else
				local index, EP, GP = CEPGP_getIndex(name, data[1]), data[2], data[3];
				GuildRosterSetOfficerNote(index, EP..","..GP);
				
				if CEPGP.Alt.Links[name] then
					if syncEP or syncGP then

						for _, alt in pairs(CEPGP.Alt.Links[name]) do
							if CEPGP_Info.Guild.Roster[alt] then
								local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
								local aEP, aGP = CEPGP_getEPGP(alt, altIndex);
								
								if syncEP and syncGP then
									GuildRosterSetOfficerNote(altIndex, EP .. "," .. GP);
								elseif syncEP then
									GuildRosterSetOfficerNote(altIndex, EP .. "," .. aGP);
								elseif syncGP then
									GuildRosterSetOfficerNote(altIndex, aEP .. "," .. GP);
								end
							end
						end
					end
				end
			end
		end
		
		update();
	end);
	
	if not success then
		CEPGP_print("A problem was encountered while awarding EP to the raid", true);
		CEPGP_print(failMsg, true);
	end
end

function CEPGP_addGuildEP(amount, msg)
	if amount == nil then
		CEPGP_print("Please enter a valid number", 1);
		return;
	end
	amount = math.floor(amount);
	local success, failMsg = pcall(function()
		amount = math.floor(amount);
		local function update()
			if tonumber(amount) <= 0 then
				amount = string.sub(amount, 2, string.len(amount));
				if msg ~= "" and msg ~= nil then
					CEPGP_sendChatMessage(amount .. " EP taken from all guild members (" .. msg .. ")", CEPGP.Channel);
					CEPGP_addTraffic("Guild", UnitName("player"), "Subtract Guild EP -" .. amount .. " (" .. msg .. ")", "", "", "", "", "", time());
				else
					CEPGP_sendChatMessage(amount .. " EP taken from all guild members", CEPGP.Channel);
					CEPGP_addTraffic("Guild", UnitName("player"), "Subtract Guild EP -" .. amount, "", "", "", "", "", time());
				end
			else
				if msg ~= "" and msg ~= nil then
					CEPGP_sendChatMessage(amount .. " EP awarded to all guild members (" .. msg .. ")", CEPGP.Channel);
					CEPGP_addTraffic("Guild", UnitName("player"), "Add Guild EP +" .. amount .. " (" .. msg .. ")", "", "", "", "", "", time());
				else
					CEPGP_sendChatMessage(amount .. " EP awarded to all guild members", CEPGP.Channel);
					CEPGP_addTraffic("Guild", UnitName("player"), "Add Guild EP +" .. amount, "", "", "", "", "", time());
				end
			end
			if _G["CEPGP_traffic"]:IsVisible() then
				CEPGP_UpdateTrafficScrollBar();
			end
		end
		
		local roster = {};
		local syncEP, syncGP, blockAlts = CEPGP.Alt.SyncEP, CEPGP.Alt.SyncGP, CEPGP.Alt.BlockAwards;
		
		for name, data in pairs(CEPGP_Info.Guild.Roster) do
			local EP, GP = CEPGP_getEPGP(name, index);
			roster[name] = {
				[1] = CEPGP_Info.Guild.Roster[name][1],
				[2] = EP + amount,
				[3] = GP
			}
		end
		
		for main, data in pairs(CEPGP.Alt.Links) do
			for _, alt in ipairs(data) do
				if syncEP or blockAlts then
					roster[alt] = nil;
				end
			end
		end
		
		for name, data in pairs(roster) do

			local index, EP, GP = CEPGP_getIndex(name, data[1]), data[2], data[3];
			GuildRosterSetOfficerNote(index, EP..","..GP);

			if syncEP and CEPGP.Alt.Links[name] then
				for _, alt in pairs(CEPGP.Alt.Links[name]) do
					if CEPGP_Info.Guild.Roster[alt] then
						local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
						local aEP, aGP = CEPGP_getEPGP(alt, altIndex);
						
						if syncEP and syncGP then
							GuildRosterSetOfficerNote(altIndex, EP .. "," .. GP);
						elseif syncEP then
							GuildRosterSetOfficerNote(altIndex, EP .. "," .. aGP);
						elseif syncGP then
							GuildRosterSetOfficerNote(altIndex, aEP .. "," .. GP);
						end
					end
				end
			end

		end
		update();
	end);
	if not success then
		CEPGP_print("A problem was encountered while awarding EP to the raid", true);
		CEPGP_print(failMsg, true);
	end
end

function CEPGP_addStandbyEP(amount, boss, msg)
	if amount == nil then
		CEPGP_print("Please enter a valid number", 1);
		return;
	end
	
	amount = math.floor(amount);
	
	local success, failMsg = pcall(function()
		local function update()
			if tonumber(amount) > 0 then
				CEPGP_addTraffic("Guild", UnitName("player"), "Standby EP +" .. amount);
			elseif tonumber(amount) < 0 then
				CEPGP_addTraffic("Guild", UnitName("player"), "Standby EP " .. amount);
			end
			if _G["CEPGP_traffic"]:IsVisible() then
				CEPGP_UpdateTrafficScrollBar();
			end
			if CEPGP_standby_options:IsVisible() then
				CEPGP_UpdateStandbyScrollBar();
			end
		end
		
		local function sendTrafficEntry(name)
			if boss then
				CEPGP_addAddonMsg("CEPGP.Standby.Enabled;"..name..";You have been awarded "..amount.." standby EP for encounter " .. boss, "WHISPER", name);
			elseif msg ~= "" and msg ~= nil then
				if tonumber(amount) > 0 then
					CEPGP_addAddonMsg("CEPGP.Standby.Enabled;"..name..";You have been awarded "..amount.." standby EP - "..msg, "WHISPER", name);
				elseif tonumber(amount) < 0 then
					CEPGP_addAddonMsg("CEPGP.Standby.Enabled;"..name..";"..amount.." standby EP has been taken from you - "..msg, "WHISPER", name);
				end
			else
				if tonumber(amount) > 0 then
					CEPGP_addAddonMsg("CEPGP.Standby.Enabled;"..name..";You have been awarded "..amount.." standby EP", "WHISPER", name);
				elseif tonumber(amount) < 0 then
					CEPGP_addAddonMsg("CEPGP.Standby.Enabled;"..name..";"..amount.." standby EP has been taken from you", "WHISPER", name);
				end
			end
		end
		
		local i = 1;
		local alts = {};
		local roster = {};
		local raidRoster = {};
		local syncEP, syncGP, blockAlts = CEPGP.Alt.SyncEP, CEPGP.Alt.SyncGP, CEPGP.Alt.BlockAwards;
		
		for _, data in ipairs(CEPGP_Info.Raid.Roster) do
			raidRoster[data[1]] = "";
		end
		
		--	Populate the roster
		if CEPGP.Standby.ByRank then
			for name, data in pairs(CEPGP_Info.Guild.Roster) do
				if not raidRoster[name] then
					local rankIndex = data[4]+1;
					if CEPGP.Standby.Ranks[rankIndex] then
						local index = CEPGP_getIndex(name, data[1]);
						roster[name] = {index};
					end
				end
			end
			
			
		elseif CEPGP.Standby.Manual then
			for _, v in pairs(CEPGP.Standby.Roster) do
				local name = v[1];
				local online = CEPGP_Info.Guild.Roster[name][8];
				if CEPGP_Info.Guild.Roster[name] and (online or CEPGP.Standby.Offline) then	--	Only guild members need to be added here
					local index = CEPGP_getIndex(name, CEPGP_Info.Guild.Roster[name][1]);
					roster[name] = {index};
				end
			end
		end
		
		for main, data in pairs(CEPGP.Alt.Links) do
			for _, alt in ipairs(data) do
				if CEPGP_Info.Guild.Roster[alt] and CEPGP_Info.Guild.Roster[main] then
					alts[alt] = main;
				end
				if ((roster[main] and roster[alt]) and syncEP) or	--	If both the main and alt are present AND EP is being synchronised
					blockAlts then
					roster[alt] = nil;	--	Ensures there are no double awards
				end
				for _name, _main in pairs(alts) do
					if _name ~= alt and _main == main then
						roster[alt] = nil;	--	Ensures there are no sibling alts in the roster
					end
				end
			end
		end
		
		--	Get current standings
		for name, data in pairs(roster) do
			local index = CEPGP_getIndex(name, data[1]);
			local EP, GP = CEPGP_getEPGP(name, index);
			EP = EP + amount;
			roster[name][2] = EP;
			roster[name][3] = GP;
		end
		
		for name, data in pairs(roster) do
			local main = alts[name];
			
			if main then	--	Refers to the character's main
				local mainIndex = CEPGP_getIndex(main, CEPGP_Info.Guild.Roster[main][1]);
				local mEP, mGP = CEPGP_getEPGP(main, mainIndex);
				mEP = mEP + amount;
				
				--	Update the main's standings, then push to the alts
				if syncEP then
					GuildRosterSetOfficerNote(mainIndex, mEP .. "," .. mGP);
					
					local online = CEPGP_Info.Guild.Roster[main][8];
					if online then
						sendTrafficEntry(main);
					end
					
					for _, altName in ipairs(CEPGP.Alt.Links[main]) do
						local altIndex = CEPGP_getIndex(altName, CEPGP_Info.Guild.Roster[altName][1]);
						local _, GP = CEPGP_getEPGP(altName, altIndex);	--	No need to get the alt's current EP as it won't be used
						if syncGP then
							GuildRosterSetOfficerNote(altIndex, mEP .. "," .. mGP);
						else
							GuildRosterSetOfficerNote(altIndex, mEP .. "," .. GP);
						end
					end
				end
			else	--	The character is a main
				local index = CEPGP_getIndex(name, data[1]);
				local EP, GP = roster[name][2], roster[name][3];
				GuildRosterSetOfficerNote(index, EP .. "," .. GP);

				if syncEP and CEPGP.Alt.Links[name] then
					for _, alt in pairs(CEPGP.Alt.Links[name]) do
						if CEPGP_Info.Guild.Roster[alt] then
							local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
							local aEP, aGP = CEPGP_getEPGP(alt, altIndex);
							
							if syncEP and syncGP then
								GuildRosterSetOfficerNote(altIndex, EP .. "," .. GP);
							elseif syncEP then
								GuildRosterSetOfficerNote(altIndex, EP .. "," .. aGP);
							elseif syncGP then
								GuildRosterSetOfficerNote(altIndex, aEP .. "," .. GP);
							end
						end
					end
				end
			end
		end
	end);
	
	if not success then
		CEPGP_print("A problem was encountered while awarding EP to the standby list", true);
		CEPGP_print(failMsg);
	end
end

function CEPGP_addGP(player, amount, itemID, itemLink, msg, response)
	if amount == nil then
		CEPGP_print("Please enter a valid number", 1);
		return;
	end
	
	
	local success, failMsg = pcall(function()
		amount = math.floor(amount);
		local main;
		local syncEP, syncGP, blockAlts = CEPGP.Alt.SyncEP, CEPGP.Alt.SyncGP, CEPGP.Alt.BlockAwards;
		local EP, GP, GPB;
		
		for _main, data in pairs(CEPGP.Alt.Links) do
			for _, alt in ipairs(data) do
				if alt == player then
					if CEPGP_Info.Guild.Roster[alt] and CEPGP_Info.Guild.Roster[_main] then
						EP, GP = CEPGP_getEPGP(_main, CEPGP_Info.Guild.Roster[_main][1]);
						GPB = GP;
						main = {
							[1] = _main,
							[2] = EP,
							[3] = GP
						};
						break;
					end
				end
			end
			if main then break; end
		end
			
			
		if CEPGP.Alt.BlockAwards and main then
			CEPGP_print("GP could not be awarded to " .. player .. " because you have blocked awards on alts", true);
			return;
		end
			
		if main then
			if syncEP or syncGP then
				local mainIndex = CEPGP_getIndex(main[1], CEPGP_Info.Guild.Roster[main[1]][1]);
				EP, GP = main[2], main[3]+amount;
				
				if syncGP then
					GuildRosterSetOfficerNote(mainIndex, EP .. "," .. GP);
					for _, alt in ipairs(CEPGP.Alt.Links[main[1]]) do
						if CEPGP_Info.Guild.Roster[alt] then
							local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
							local aEP, aGP = CEPGP_getEPGP(alt, altIndex);	--	Alt EPGP
							
							if syncEP and syncGP then
								GuildRosterSetOfficerNote(altIndex, EP .. "," .. GP);
							elseif syncEP then
								GuildRosterSetOfficerNote(altIndex, EP .. "," .. aGP);
							elseif syncGP then
								GuildRosterSetOfficerNote(altIndex, aEP .. "," .. GP);
							end
						end
					end
				else	--	If GP is not being synced then the alt should be considered independent
					local index = CEPGP_getIndex(player, CEPGP_Info.Guild.Roster[player][1]);
					EP, GP = CEPGP_getEPGP(player, index);
					GPB = GP;
					GP = GP + amount;
					GuildRosterSetOfficerNote(index, EP .. "," .. GP);
				end
			else
				local index = CEPGP_getIndex(player, CEPGP_Info.Guild.Roster[player][1]);
				EP, GP = CEPGP_getEPGP(player, index);
				GPB = GP;
				GP = GP + amount;
				GuildRosterSetOfficerNote(index, EP .. "," .. GP);
			end
		else
			local index = CEPGP_getIndex(player, CEPGP_Info.Guild.Roster[player][1]);
			EP,GP = CEPGP_getEPGP(player, index);
			GPB = GP;
			GP = GP + amount;
			GuildRosterSetOfficerNote(index, EP..","..GP);
			
			if CEPGP.Alt.Links[player] then
				for _, alt in ipairs(CEPGP.Alt.Links[player]) do
					if CEPGP_Info.Guild.Roster[alt] then
						local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
						local aEP, aGP = CEPGP_getEPGP(alt, altIndex);	--	Alt EPGP
						
						if CEPGP.Alt.SyncEP and CEPGP.Alt.SyncGP then
							GuildRosterSetOfficerNote(altIndex, EP .. "," .. GP);
						elseif CEPGP.Alt.SyncEP then
							GuildRosterSetOfficerNote(altIndex, EP .. "," .. aGP);
						elseif CEPGP.Alt.SyncGP then
							GuildRosterSetOfficerNote(altIndex, aEP .. "," .. GP);
						end
					end
				end
			end
		end
		
		if CEPGP_Info.Guild.Roster[player] then
			if not itemID then
				if tonumber(amount) < 0 then -- Number is negative
					amount = string.sub(amount, 2, string.len(amount));
					if msg ~= "" and msg ~= nil then
						CEPGP_sendChatMessage(amount .. " GP taken from " .. player .. " (" .. msg .. ")", CEPGP.Channel);
						CEPGP_addTraffic(player, UnitName("player"), "Subtract GP -" .. amount .. " (" .. msg .. ")", EP, EP, GPB, GP);
					else
						CEPGP_sendChatMessage(amount .. " GP taken from " .. player, CEPGP.Channel);
						CEPGP_addTraffic(player, UnitName("player"), "Subtract GP -" .. amount, EP, EP, GPB, GP);
					end
				else -- Number is positive
					if msg ~= "" and msg ~= nil then
						CEPGP_sendChatMessage(amount .. " GP added to " .. player .. " (" .. msg .. ")", CEPGP.Channel);
						CEPGP_addTraffic(player, UnitName("player"), "Add GP +" .. amount .. " (" .. msg .. ")", EP, EP, GPB, GP);
					else
						CEPGP_sendChatMessage(amount .. " GP added to " .. player, CEPGP.Channel);
						CEPGP_addTraffic(player, UnitName("player"), "Add GP +" .. amount, EP, EP, GPB, GP);
					end
				end
			else -- If an item is associated with the message then the number cannot be negative
				if not itemLink then
					_, itemLink = GetItemInfo(tonumber(itemID));
				end
				if response then
					CEPGP_addTraffic(player, UnitName("player"), "Add GP " .. amount .. " (" .. response .. ")", EP, EP, GPB, GP, itemID);
				else
					CEPGP_addTraffic(player, UnitName("player"), "Add GP " .. amount, EP, EP, GPB, GP, itemID);
				end
			end
			CEPGP_UpdateTrafficScrollBar();
		else
			local index = CEPGP_getIndex(player);
			if index then
				CEPGP_addTraffic(player, UnitName("player"), "Awarded for free (Exclusion List)", nil, nil, nil, nil, itemID);
			else
				CEPGP_print(player .. " not found in guild roster - no GP given");
				CEPGP_print("If this was a mistake, you can manually award them GP via the CEPGP guild menu");
			end
		end
	end);
	
	if not success then
		CEPGP_print("A problem was encountered while awarding GP", true);
		CEPGP_print(failMsg, true);
	end
end

function CEPGP_addEP(player, amount, msg)
	if amount == nil then
		CEPGP_print("Please enter a valid number", 1);
		return;
	end
	
	local success, failMsg = pcall(function()
		amount = math.floor(amount);
		if CEPGP_Info.Guild.Roster[player] then
			
			local main, EP, GP, EPB;
		
			for _main, data in pairs(CEPGP.Alt.Links) do
				for _, alt in ipairs(data) do
					if alt == player then
						if CEPGP_Info.Guild.Roster[alt] and CEPGP_Info.Guild.Roster[_main] then
							EP, GP = CEPGP_getEPGP(_main, CEPGP_Info.Guild.Roster[_main][1]);
							main = {
								[1] = _main,
								[2] = EP,
								[3] = GP
							};
							break;
						end
					end
				end
				if main then break; end
			end
			
			if CEPGP.Alt.BlockAwards and main then
				CEPGP_print("EP could not be awarded to " .. player .. " because you have blocked awards on alts", true);
				return;
			end
			
			if main then
				if CEPGP.Alt.SyncEP or CEPGP.Alt.SyncGP then
					local mainIndex = CEPGP_getIndex(main[1], CEPGP_Info.Guild.Roster[main[1]][1]);
					EP, GP = main[2]+amount, main[3];
					local syncEP, syncGP = CEPGP.Alt.SyncEP, CEPGP.Alt.SyncGP;
					
					if syncEP then
						GuildRosterSetOfficerNote(mainIndex, EP .. "," .. GP);
						for _, alt in ipairs(CEPGP.Alt.Links[main[1]]) do
							if CEPGP_Info.Guild.Roster[alt] then
								local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
								local aEP, aGP = CEPGP_getEPGP(alt, altIndex);	--	Alt EPGP
								
								if syncEP and syncGP then
									GuildRosterSetOfficerNote(altIndex, EP .. "," .. GP);
								elseif syncEP then
									GuildRosterSetOfficerNote(altIndex, EP .. "," .. aGP);
								elseif syncGP then
									GuildRosterSetOfficerNote(altIndex, aEP .. "," .. GP);
								end
							end
						end
					else	--	If GP is not being synced then the alt should be considered independent
						local index = CEPGP_getIndex(player, CEPGP_Info.Guild.Roster[player][1]);
						EP, GP = CEPGP_getEPGP(player, index);
						EPB = EP;
						EP = EP + amount;
						GuildRosterSetOfficerNote(index, EP .. "," .. GP);
					end
				else
					local index = CEPGP_getIndex(player, CEPGP_Info.Guild.Roster[player][1]);
					EP, GP = CEPGP_getEPGP(player, index);
					EPB = EP;
					EP = EP + amount;
					GuildRosterSetOfficerNote(index, EP .. "," .. GP);
				end
			else
				local index = CEPGP_getIndex(player, CEPGP_Info.Guild.Roster[player][1]);
				EP, GP = CEPGP_getEPGP(player, index);
				EPB = EP;
				EP = EP + amount;
				GuildRosterSetOfficerNote(index, EP..","..GP);
				
				if CEPGP.Alt.Links[player] then
					for _, alt in ipairs(CEPGP.Alt.Links[player]) do
						if CEPGP_Info.Guild.Roster[alt] then
							local altIndex = CEPGP_getIndex(alt, CEPGP_Info.Guild.Roster[alt][1]);
							local aEP, aGP = CEPGP_getEPGP(alt, altIndex);	--	Alt EPGP
							
							if CEPGP.Alt.SyncEP and CEPGP.Alt.SyncGP then
								GuildRosterSetOfficerNote(altIndex, EP .. "," .. GP);
							elseif CEPGP.Alt.SyncEP then
								GuildRosterSetOfficerNote(altIndex, EP .. "," .. aGP);
							elseif CEPGP.Alt.SyncGP then
								GuildRosterSetOfficerNote(altIndex, aEP .. "," .. GP);
							end
						end
					end
				end
			end
			
			if tonumber(amount) <= 0 then
				if msg ~= "" and msg ~= nil then
					amount = string.sub(amount, 2, string.len(amount));
					CEPGP_sendChatMessage(amount .. " EP taken from " .. player .. " (" .. msg .. ")", CEPGP.Channel);
					CEPGP_addTraffic(player, UnitName("player"), "Subtract EP -" .. amount .. " (" .. msg .. ")", EPB, EP, GP, GP);
				else
					amount = string.sub(amount, 2, string.len(amount));
					CEPGP_sendChatMessage(amount .. " EP taken from " .. player, CEPGP.Channel);
					CEPGP_addTraffic(player, UnitName("player"), "Subtract EP -" .. amount, EPB, EP, GP, GP);
				end
			else
				if msg ~= "" and msg ~= nil then
					CEPGP_sendChatMessage(amount .. " EP added to " .. player .. " (" .. msg .. ")", CEPGP.Channel);
					CEPGP_addTraffic(player, UnitName("player"), "Add EP +" .. amount .. " (" .. msg ..")", EPB, EP, GP, GP);
				else
					CEPGP_sendChatMessage(amount .. " EP added to " .. player, CEPGP.Channel);
					CEPGP_addTraffic(player, UnitName("player"), "Add EP +" .. amount, EPB, EP, GP, GP);
				end
			end
			CEPGP_UpdateTrafficScrollBar();
		else
			local index = CEPGP_getIndex(player);
			if not index then
				CEPGP_print("Player not found in guild roster.", true);
			end
		end
	end);
	
	if not success then
		CEPGP_print("A problem was encountered while awarding EP", true);
		CEPGP_print(failMsg, true);
	end
end

function CEPGP_decay(amount, msg, decayEP, decayGP, fixed)
	if amount == nil then
		CEPGP_print("Please enter a valid number", 1);
		return;
	end
	
	local success, failMsg = pcall(function()
		
		local temp = {};
		
		for k, _ in pairs(CEPGP_Info.Guild.Roster) do
			table.insert(temp, k);
		end
		
		CEPGP_print("Starting decay. Please wait...");
		
		local function update()
			local str, tLog;
			if tonumber(amount) <= 0 then
				amount = string.sub(amount, 2, string.len(amount));
				if msg ~= "" and msg ~= nil then
					str = "Guild " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " inflated by " .. amount .. (fixed and " " or "% ") .. "(" .. msg .. ")";
					tLog = "Inflated " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " +" .. amount .. (fixed and "" or "%") .. "(" .. msg .. ")";
				else
					str = "Guild " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " inflated by " .. amount .. (fixed and " " or "% ")
					tLog = "Inflated " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " +" .. amount .. (fixed and "" or "%");
				end
			else
				if msg ~= "" and msg ~= nil then
					str = "Guild " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " decayed by " .. amount .. (fixed and " " or "% ") .. "(" .. msg .. ")";
					tLog = "Decayed " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " -" .. amount .. (fixed and "" or "%") .. "(" .. msg .. ")";
				else
					str = "Guild " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " decayed by " .. amount .. (fixed and " " or "% ");
					tLog = "Decayed " .. (decayEP and "EP" or decayGP and "GP" or "EPGP") .. " -" .. amount .. (fixed and "" or "%");
				end
			end
			CEPGP_sendChatMessage(str, CEPGP.Channel);
			CEPGP_addTraffic("Guild", UnitName("player"), tLog);
			if _G["CEPGP_traffic"]:IsVisible() then
				CEPGP_UpdateTrafficScrollBar();
			end
		end
		
		local roster = {};
		
		for name, data in pairs(CEPGP_Info.Guild.Roster) do
			local EP, GP = CEPGP_getEPGP(name, index);
			
			if decayEP or (not decayEP and not decayGP) then
				if fixed then
					EP = math.max(math.floor(tonumber(EP)-amount), 0);	--	If the decay amount is a fixed number
				else
					EP = math.max(math.floor(tonumber(EP)*(1-(amount/100))), 0);	--	If it's a percentage
				end
			end
			if decayGP or (not decayEP and not decayGP) then
				if CEPGP.GP.DecayFactor then
					if fixed then
						GP = math.max(math.floor((tonumber(GP-CEPGP.GP.Min)-amount)+CEPGP.GP.Min), CEPGP.GP.Min);
					else
						GP = math.max(math.floor((tonumber(GP-CEPGP.GP.Min)*(1-(amount/100)))+CEPGP.GP.Min), CEPGP.GP.Min);
					end
				else
					if fixed then
						GP = math.max(math.floor(tonumber(GP)-amount), CEPGP.GP.Min);
					else
						GP = math.max(math.floor((tonumber(GP)*(1-(amount/100)))), CEPGP.GP.Min);
					end
				end
			end
			
			roster[name] = {
				[1] = CEPGP_Info.Guild.Roster[name][1],
				[2] = EP,
				[3] = GP
			}
		end
		
		for name, data in pairs(roster) do
			local index, EP, GP = CEPGP_getIndex(name, data[1]), data[2], data[3];
			GuildRosterSetOfficerNote(index, EP..","..GP);
		end
		
		CEPGP_print("Decay completed successfully");
		
		update();
		
	end);
		
	if not success then
		CEPGP_print("A problem was encountered while decaying", true);
		CEPGP_print(failMsg, true);
	end
end

function CEPGP_resetAll(msg)
	
	local success, failMsg = pcall(function()
		local function update()
			if msg ~= "" and msg ~= nil then
				CEPGP_addTraffic("Guild", UnitName("player"), "Cleared EPGP standings (" .. msg .. ")");
				CEPGP_sendChatMessage("All EPGP standings have been cleared! (" .. msg .. ")", CEPGP.Channel);
			else
				CEPGP_addTraffic("Guild", UnitName("player"), "Cleared EPGP standings");
				CEPGP_sendChatMessage("All EPGP standings have been cleared!", CEPGP.Channel);
			end
			C_Timer.After(2, function()
				CEPGP_rosterUpdate("GUILD_ROSTER_UPDATE");
			end);
		end
		
		local i = 0;
		
		C_Timer.After(0.1, function()
			C_Timer.NewTicker(1/30, function()
				i = i + 1;
				local name = Ambiguate(GetGuildRosterInfo(i), "all");
				local rankIndex = select(3, GetGuildRosterInfo(i));
				if CEPGP_Info.Guild.Roster[name][9] then return; end
				GuildRosterSetOfficerNote(i, "0,"..CEPGP.GP.Min);
				if i == GetNumGuildMembers() then
					update();
				end
			end, GetNumGuildMembers());
		end);
	end);
	
	if not success then
		CEPGP_print("A problem was encountered while resetting standings", true);
		CEPGP_print(failMsg, true);
	end
	
end
