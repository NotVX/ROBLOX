--[[
    Gun mod made by VX#7165
    for this game: www.roblox.com/games/5615158353/Skirmish
--]]

local l = game.Players.LocalPlayer
-- UGLY CODE, FUCK OFF --

-- inf ammo
coroutine.wrap(function()
    while wait() do
        for i, v in pairs(l.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v:FindFirstChild("ConfigMods") and v.ConfigMods:FindFirstChild("CConfig") then
                    local cmod = require(v.ConfigMods.CConfig)
                    cmod.Ammo = math.huge
                    cmod.StoredAmmo = math.huge
                end
            end
        end
        for i, v in pairs(l.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v:FindFirstChild("ConfigMods") and v.ConfigMods:FindFirstChild("CConfig") then
                    local cmod = require(v.ConfigMods.CConfig)
                    cmod.Ammo = math.huge
                    cmod.StoredAmmo = math.huge
                end
            end
        end
    end
end)()
-- wtf.. why uh --

-- norecoil
coroutine.wrap(function()
    while wait() do
        local env = getsenv(l.PlayerGui:WaitForChild('Carbon_CEngine'))
        env.CalculateCamShake = function() 
            return Vector3.new(0, 0, 0) 
        end
        env.CalculateCamRecoil = function() 
            return Vector3.new(0, 0, 0) 
        end
        env.CalculateRecoil = function() 
            return Vector3.new(0, 0, 0) 
        end
    end
end)()