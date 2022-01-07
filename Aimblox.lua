--[[
    By - VX#4212
    for this poopee game: www.roblox.com/games/6808416928/RFB-Aimblox-BETA
--]]
for i, v in pairs(getgc(true)) do
    if type(v) == "table" then
        if rawget(v, "MaxAmmo") and type(rawget(v, "MaxAmmo")) == "number" then
            v.MaxAmmo = math.huge
            v.HorizontalRecoil = 0
            v.VerticalRecoil = 0
        end
        if rawget(v, "Ammo") and type(rawget(v, "Ammo")) == "number" then
            v.Ammo = math.huge
            v.DropSpread = 0
            v.SpreadStep = 0
            v.MinSpread = 0
            v.MaxSpread = 0
            v.GunFireStopStateDelay = 0
            v.ReloadTime = 0
            v.GunEquipDelay = 0
        end
        if rawget(v, "Recoil") and type(rawget(v, "Recoil")) == "number" then
            v.RPM = 10000
            v.VerticalClimbDrop = 0
            v.Range = 10000
            v.Recoil = 0
        end
    end
end
