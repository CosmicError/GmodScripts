-- make a file in garrysmod/lua/autorun/server

-- Change the ranks in "pacranks" to the ranks you want to allow to have acces to the pac editor
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
