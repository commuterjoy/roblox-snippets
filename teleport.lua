function onTouched(hit)
	for i, v in   pairs(game.Players:GetChildren()) do
		v.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame + Vector3.new(-32, 0.5, -9.5)
	end
end
 
script.Parent.Touched:connect(onTouched)
