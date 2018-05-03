if SERVER then
    AddCSLuaFile()
    
    -- add other addons
    -- ghost knife
    resource.AddWorkshop("1326662749")
    
    -- cloaking device
    resource.AddWorkshop("922599473")
    
    -- blink
    resource.AddWorkshop("802015788")
    
    -- manipulator
    resource.AddWorkshop("671603913")
end

hook.Add("TTTCPreClassesInit", "InitClassPackOne", function()
    AddCustomClass("MANIPULATOR", {
        --color = Color(),
        name = "manipulator",
        weapons = {
            "weapon_ttt_satm"
        }
    })

    AddCustomClass("GHOST", {
        --color = Color(),
        name = "ghost",
        weapons = {
            "weapon_ttt_cloak",
            "weapon_ttt_ghostknife"
        }
    })

    AddCustomClass("SPEEDER", {
        --color = Color(),
        name = "speeder",
        weapons = {
            "weapon_vadim_blink"
        }
    })
end)

hook.Add("TTT2_FinishedClassesSync", "TTT2ClassPackInit", function(ply, first)
	if CLIENT and first then -- just on client and first init !

		-- setup here is not necessary but if you want to access the role data, you need to start here
		-- setup basic translation !
		LANG.AddToLanguage("English", CLASSES.MANIPULATOR.name, "Manipulator")
		LANG.AddToLanguage("English", CLASSES.GHOST.name, "Ghost")
		LANG.AddToLanguage("English", CLASSES.SPEEDER.name, "Speeder")
        
        -- just this language too
		LANG.AddToLanguage("Deutsch", CLASSES.MANIPULATOR.name, "Manipulierer")
		LANG.AddToLanguage("Deutsch", CLASSES.GHOST.name, "Geist")
		LANG.AddToLanguage("Deutsch", CLASSES.SPEEDER.name, "Speeder")
    end
end)
