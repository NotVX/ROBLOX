--[[
    07.01.22 / Updated.
    Whats new? - Literally fucking nothing lol
    Game - www.roblox.com/games/5615158353/Skirmish
--]]

local client = game.Players.LocalPlayer
local senv = getsenv(client.PlayerGui["Carbon_CEngine Modified"])

--// Functions
function NoRecoil()
    repeat wait() until client:FindFirstChild("PlayerGui"):FindFirstChild("Carbon_CEngine Modified")
    local senv = getsenv(client.PlayerGui["Carbon_CEngine Modified"])
    repeat wait() until rawget(senv, "CalculateRecoil") and rawget(senv, "CalculateRecoil") and rawget(senv, "CalculateRecoil")
    for i, v in next, {senv.CalculateRecoil, senv.CalculateCamRecoil, senv.CalculateCamShake} do
        hookfunction(v, function()
            return Vector3.new(0, 0, 0)
        end)
    end
end
function GunMod(tool)
    local mods = tool:FindFirstChild("ConfigMods")
    if tool:IsA("Tool") and mods then
        local menv = require(mods.CConfig)
        menv.Ammo = math.huge
        menv.StoredAmmo = math.huge
    end
end

--// Setup
for i, v in next, client.Backpack:GetChildren() do
    GunMod(v)
end
client.Backpack.ChildAdded:Connect(function(v)
    GunMod(v)
end)
NoRecoil()

--// Auto setup after you die
client.CharacterAdded:Connect(function()
    repeat wait() until client:FindFirstChild("Backpack")
    task.spawn(NoRecoil)
    client.Backpack.ChildAdded:Connect(function(v)
        GunMod(v)
    end)
end)
