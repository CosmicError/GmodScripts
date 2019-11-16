-- Whats this??? :O

local function Kickplr(target)
    target:Kick()
end

concommand.Add("$ForceKick", Kickplr(target))
