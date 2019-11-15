-- Make a file in garrysmod/lua/autorun/server

-- // USER GROUP VERSION //
-- Change the groups in "pacranks" to the user groups you want to allow to have acces to the pac editor
local pacranks = {
	["moderators"] = true,
	["developers"] = true,
	["donators"] = true,
	["admins"] = true,
	["superadmin"] = true,
	["owners"] = true,
}

hook.Add("PrePACConfigApply", "PACRankRestrict", function(ply)
	if not pacranks[ply:GetUserGroup()] then
        return false
    end
end)

-- // STEAMID3 VERSION //
local allowid = {
	["[U:1:355048465]"] = true -- my steamid3
}

hook.Add("PrePACConfigApply", "PACRankRestrict", function(ply)
	if not allowid[ply:AccountID()] then
        return false
    end
end)
