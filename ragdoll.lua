local ragdoller = loadstring(game:HttpGet'https://pastebin.com/raw/UQkFH8DB')()
function ragdoll(p,d)
	--c=character
	--p=player
	--d=how long ragdoll will stay
	wait(0.05)
	local Ragdoller = ragdoller:start(p,d)
	local result = Ragdoller:ragdollwithresult()
	return result,Ragdoller --use local ragdoll = ragdoll(character,player,delay) inorder if u want to modify it
end
function impact(part,ragdoller2,chance)
	if part then
		part.Touched:Connect(function()
			if math.random(1,chance)==chance then
				ragdoller2.makesoundwithlist(part, {Volume = 10}, {8595974357, 8595983255, 8595980577, 8595975458, 8595975878})
			end
		end)
	end
end
function asd(plr)
	plr.CharacterAdded:Connect(function(chr)
		chr:WaitForChild("Humanoid").Died:Connect(function()
			local result, ragdoller2 = ragdoll(plr,25)
			ragdoller2.makesoundwithlist(result.Head, {Volume = 10}, {528432644})
			ragdoller2.makesoundwithlist(result.Torso, {Volume = 10}, {264486467})
			impact(result:FindFirstChild("Right Arm"),ragdoller2,52)
			impact(result:FindFirstChild("Left Arm"),ragdoller2,52)
			impact(result:FindFirstChild("Right Leg"),ragdoller2,52)
			impact(result:FindFirstChild("Left Leg"),ragdoller2,52)
			impact(result:FindFirstChild("Head"),ragdoller2,67)
			impact(result:FindFirstChild("Torso"),ragdoller2,75)
		end)
	end)
end
function asd2(plr)
	local chr = plr.Character
	if chr then
		chr:WaitForChild("Humanoid").Died:Connect(function()
			local result, ragdoller2 = ragdoll(plr,25)
			ragdoller2.makesoundwithlist(result.Head, {Volume = 10}, {528432644})
			ragdoller2.makesoundwithlist(result.Torso, {Volume = 10}, {264486467})
			impact(result:FindFirstChild("Right Arm"),ragdoller2,52)
			impact(result:FindFirstChild("Left Arm"),ragdoller2,52)
			impact(result:FindFirstChild("Right Leg"),ragdoller2,52)
			impact(result:FindFirstChild("Left Leg"),ragdoller2,52)
			impact(result:FindFirstChild("Head"),ragdoller2,67)
			impact(result:FindFirstChild("Torso"),ragdoller2,75)
		end)
	end
	asd(plr)
end
game.Players.PlayerAdded:Connect(asd)
for i, v in next, game.Players:players'' do
	spawn(function()asd2(v)end)
	print(v)
end
print("yes")
