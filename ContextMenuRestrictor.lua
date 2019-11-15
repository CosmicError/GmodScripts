-- CLIENT SIDE PUT IN garrysmod/gamemodes/YOURGAMEMODE/gamemode/cl_init/lua
local sranks = {
	["builder"] = true,
	["moderator"] = true,
	["gamemaster"] = true,
  	["admin"] = true,
  	["superadmin"] = true,
	["developer"] = true
}

-- CONTEXT MENU (C)
function GM:ContextMenuOpen()
    if not sranks[LocalPlayer():GetUserGroup()] then
        return false
    else
        return true
    end
end
