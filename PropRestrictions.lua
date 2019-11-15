-- make a file in garrysmod/lua/autorun/server

local hooks = {
    "Effect",
    "NPC",
    "Prop",
    "Ragdoll",
    "SENT",
    "Vehicle"
}

-- Change Pranks to include all the ranks that can spawn props
local pranks = {
    ["builder"] = true,
    ["moderator"] = true,
    ["gamemaster"] = true,
    ["admin"] = true,
    ["superadmin"] = true,
    ["developer"] = true,
    ["manager"] = true,
}

-- DO NOT CHANGE THIS UNLESS YOU KNOW WHAT YOU ARE DOING!
for _, v in pairs (hooks) do
    hook.Add("PlayerSpawn"..v, "Disallow_user_"..v, function(ply)
        if not pranks[ply:GetUserGroup()] then
            return false
        end
        return true
    end)
end
