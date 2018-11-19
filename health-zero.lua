local trapPart = script.Parent
local function onPartTouch(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChildWhichIsA("Humanoid")
    if ( humanoid ) then
        -- Set player's health to 0
        humanoid.Health = 0
    end
end
trapPart.Touched:Connect(onPartTouch)
