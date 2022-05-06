--[[
ace attorney ruiner / aar (v2)
basically a troll script for ace attorney
keep this shit private cus ace attorney programmers might fix this
commands list;
	aar.freeze.enable() freezes the server
	aar.freeze.disable() unfreezes the server
	aar.music.glitch() makes the music sound like a corrupted mp3
	aar.music.mix() mixes different music tracks
	aar.confuse(repeat (number),message (string)) makes everything look broken
	aar.antikick() literally a antikick (credits to cmd-x cus i cant script one myself)
]]
	local People = {"Judge","Witness","Prosecution","Defense"}
	local Emotes = {"Point","Laugh","Slam"} -- useless
	local Popups = {"Objection","Holdit","Order"}
	local Music = {"Trail","ClassroomTrial","Questioned","Caught","Objection","Cornered","ApolloObjection","ApolloCornered","None"}
	local Speak = workspace.Main.General.Speak
	local MusicThing = workspace.Main.Music.Event
	local aar = {
		freeze = {
			enable = function(text)
				for i=1, 909 do
					Speak:FireServer(nil,"Judge","","",false)
				end
			end,
			disable = function()
				for i = 1, 101 do
					Speak:FireServer("AAR v2: unfreezed server (might take a bit to unfreeze)","Judge","","",false)
				end
			end
		},
		music = {
			glitch = function()
				while wait() do
					MusicThing:FireServer(Music[math.random(1,#Music)])
					wait(math.random(10,50)/600)
				end
			end,
			mix = function()
				for i=1, 100 do
					MusicThing:FireServer(Music[math.random(1,#Music)])
					wait()
				end
			end
		},
		confuse = function(num,text)
			for i=1, num do
				Speak:FireServer(text,People[math.random(1,#People)],"",Popups[math.random(1,#Popups)],false)
				wait()
			end
		end
		antikick = function()
			--credits to cmd-x :)
			local mt = getrawmetatable(game:GetService("CoreGui"))
			local ncallsa = mt.__namecall
			setreadonly(mt, false)
			mt.__namecall = newcclosure(function(...)
				local args = {...}
				if not checkcaller() and getnamecallmethod() == "Kick" then
					return nil
				end
				return ncallsa(...)
			end)
			setreadonly(mt, true)
		end
	}
