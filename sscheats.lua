local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

print(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)

function autoTap(toggled)
	game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
	wait()
end

function autoSell(toggled)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(532,183,146)
	wait(0.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(544,184,94)
	wait(1)
end

local main = library:CreateWindow("Cheats")
local category_autofarm = main:CreateFolder("Auto Farm")
local category_teleport = main:CreateFolder("Teleport")
local category_misc     = main:CreateFolder("Miscellaneous")

local toggle_autotap = category_autofarm:Toggle("Auto-tap", function(bool)	
	getgenv().toggled1 = bool

	spawn(function() 
		while toggled1 do
			autoTap(toggled1)	
		end
	end)
end)

local toggle_autosell = category_autofarm:Toggle("Auto-sell", function(bool)	
	getgenv().toggled2 = bool

	spawn(function() 
		while toggled2 do
			autoSell(toggled2)	
		end
	end)
end)

local button_tpto_spawn = category_teleport:Button("To Spawn", function(bool)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(534,184,80)
end)

local button_tpto_shop = category_teleport:Button("To Shop", function(bool)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(474,184,54)
end)

local button_tpto_sell = category_teleport:Button("To Sell", function(bool)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(532,183,146)
end)

category_misc:DestroyGui()

