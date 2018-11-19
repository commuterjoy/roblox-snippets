local boostPart = script.Parent
-- Set a variable for boosted jump power
local boostedJumpPower = 300
local function onPartTouch(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChildWhichIsA("Humanoid")
	humanoid.Sit = true
    if ( humanoid ) then
        boostPart.CanCollide = false
        local currentJumpPower = humanoid.JumpPower
        if ( currentJumpPower < boostedJumpPower ) then
            humanoid.JumpPower = boostedJumpPower
            wait(10)
            humanoid.JumpPower = currentJumpPower
        end
    end
end
boostPart.Touched:Connect(onPartTouch)
