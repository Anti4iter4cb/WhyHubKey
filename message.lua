local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "KEY SYSTEM", HidePremium = false,  SaveConfig = false,IntroText = "WhyHub", ConfigFolder = "Test"})
OrionLib:MakeNotification({
	Name = "Logged in",
	Content ="You are logged in as "..Player.Name.." ",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "SK21SA54xCa06543GEXZjgdSa14"
_G.KeyInput = "string"

function Whyhub()
	print("Injected")

	OrionLib:Destroy()
end


local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddTextbox({
	Name = "Enter key",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})


Tab:AddButton({
	Name = "Try",
	Callback = function()
		if _G.KeyInput == _G.Key then
			Whyhub()
		end
	end    
})