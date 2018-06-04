if SERVER then
    AddCSLuaFile()
    
    ---------------------------------
    --
    --    Add FastDL for Clients
    --
    ---------------------------------
    
    -- add other addons
    -- TTTC OP Class Pack Collection
    resource.AddWorkshop("1387227768")
	
--------
-- hooks
--------

    ---------------------------------
    --
    --      Initialize Classes
    --
    ---------------------------------

    hook.Add("TTTCPreClassesInit", "InitOPClassPackAlf21", function()
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
        
        AddCustomClass("PSFAN", {
            color = Color(0, 230, 0, 255),
            name = "pietsmietfan",
            weapons = {
                "weapon_pietbomb",
                "weapon_pietgun"
            }
        }, {
            random = 5
        })
        
        AddCustomClass("RAGELORD", {
            color = Color(153, 0, 0, 255),
            name = "ragelord",
            weapons = {
                "weapon_angryhobo",
                "weapon_ttt_spartankick"
            }
        }, {
            random = 10
        })
        
        AddCustomClass("PENNER", {
            color = Color(153, 102, 51, 255),
            name = "penner",
            weapons = {
                "weapon_angryhobo",
                "weapon_ttt_jarate"
            }
        }, {
            random = 10
        })
        
        AddCustomClass("VET", {
            color = Color(0, 255, 0, 255),
            name = "vet",
            weapons = {
                "weapon_ttt_homingpigeon",
                "weapon_ttt_mine_turtle"
            }
        }, {
            random = 10
        })
        
        AddCustomClass("NOOB", {
            color = Color(0, 255, 0, 255),
            name = "noob",
            weapons = {
                "weapon_ttt_homingpigeon",
                "weapon_ttt_mirrorfate"
            }
        }, {
            random = 5
        })
        
        AddCustomClass("SAMURAI", {
            color = Color(204, 51, 0, 255),
            name = "samurai",
            weapons = {
                "genji_melee"
            },
            items = {
                EQUIP_BLUE_BULL
            }
        })
        
        AddCustomClass("JEDI", {
            color = Color(51, 51, 153, 255),
            name = "jedi",
            weapons = {
                "weapon_ttt_detective_lightsaber"
            },
            items = {
                EQUIP_BLUE_BULL,
				EQUIP_NOFALLDMG
            }
        })
        
        AddCustomClass("LUCKYLUKE", {
            color = Color(230, 230, 0, 255),
            name = "luckyluke",
            weapons = {
                "weapon_ttt_peacekeeper"
            }
        })
        
        AddCustomClass("RAMBO", {
            color = Color(255, 102, 0, 255),
            name = "rambo",
            weapons = {
                "weapon_minigun"
            },
            items = {
                EQUIP_ARMOR
            }
        })
        
        AddCustomClass("FREEZER", {
            color = Color(51, 153, 255, 255),
            name = "freezer",
            weapons = {
                "weapon_ttt_freezegun"
            }
        })
    end)
    
    ---------------------------------
    --
    --         Custom Hooks
    --
    ---------------------------------
	
	--
else

--------
-- hooks
--------

    hook.Add("TTTCFinishedClassesSync", "TTTCClassPackInit", function(_, first)
        if first then -- just on client and first init !

            -- setup here is not necessary but if you want to access the role data, you need to start here
            -- setup basic translation !
            local l = "English"
            
            LANG.AddToLanguage(l, CLASSES.MANIPULATOR.name, "Manipulator")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.MANIPULATOR.name, "Manipulate the game!")
            
            LANG.AddToLanguage(l, CLASSES.GHOST.name, "Ghost")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.GHOST.name, "Just be a ghost!")
            
            LANG.AddToLanguage(l, CLASSES.SPEEDER.name, "Speeder")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.SPEEDER.name, "Now you should be the fastest one on the whole world!")
            
            LANG.AddToLanguage(l, CLASSES.PSFAN.name, "Pietsmiet Fan")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.PSFAN.name, "This is a class for real Pietsmiet Fans!")
            
            LANG.AddToLanguage(l, CLASSES.RAGELORD.name, "Rage-Lord")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.RAGELORD.name, "RAGEEEEEEE!")
            
            LANG.AddToLanguage(l, CLASSES.PENNER.name, "Penner")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.PENNER.name, "You don't have a home, but something else...")
            
            LANG.AddToLanguage(l, CLASSES.VET.name, "Vet")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.VET.name, "Animals are soo cute!")
            
            LANG.AddToLanguage(l, CLASSES.NOOB.name, "Noob")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.NOOB.name, "Yep, you're a noob...")
            
            LANG.AddToLanguage(l, CLASSES.SAMURAI.name, "Samurai")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.SAMURAI.name, "Fight for your honor!")
            
            LANG.AddToLanguage(l, CLASSES.RAMBO.name, "Rambo")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.RAMBO.name, "Just shoot...")
            
            LANG.AddToLanguage(l, CLASSES.FREEZER.name, "Freezer")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.FREEZER.name, "Cool them down!")
            
            LANG.AddToLanguage(l, CLASSES.LUCKYLUKE.name, "Lucky Luke")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.LUCKYLUKE.name, "That's not a normal Luke.")
            
            LANG.AddToLanguage(l, CLASSES.JEDI.name, "Jedi")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.JEDI.name, "May the force be with you!")
            
            -- just this language too
            l = "Deutsch"
            
            LANG.AddToLanguage(l, CLASSES.MANIPULATOR.name, "Manipulierer")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.MANIPULATOR.name, "Manipuliere das Spiel!")
            
            LANG.AddToLanguage(l, CLASSES.GHOST.name, "Geist")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.GHOST.name, "Sei einfach wie ein Geist!")
            
            LANG.AddToLanguage(l, CLASSES.SPEEDER.name, "Speeder")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.SPEEDER.name, "Du solltest nun der Schnellste auf der ganzen Welt sein!")
            
            LANG.AddToLanguage(l, CLASSES.PSFAN.name, "Pietsmiet Fan")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.PSFAN.name, "Diese Klasse ist für richtige Pietsmiet Fans!")
            
            LANG.AddToLanguage(l, CLASSES.RAGELORD.name, "Rage-Lord")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.RAGELORD.name, "RAGEEEEEEE!")
            
            LANG.AddToLanguage(l, CLASSES.PENNER.name, "Obdachloser")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.PENNER.name, "Du hast zwar kein Zuhause, dafür aber etwas anderes...")
            
            LANG.AddToLanguage(l, CLASSES.VET.name, "Tierarzt")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.VET.name, "Tiere sind soo knuddelig!")
            
            LANG.AddToLanguage(l, CLASSES.NOOB.name, "Noob")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.NOOB.name, "Jap, du bist ein Noob...")
            
            LANG.AddToLanguage(l, CLASSES.SAMURAI.name, "Samurai")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.SAMURAI.name, "Kämpfe für deine Ehre!")
            
            LANG.AddToLanguage(l, CLASSES.RAMBO.name, "Rambo")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.RAMBO.name, "Schieß einfach drauf...")
            
            LANG.AddToLanguage(l, CLASSES.FREEZER.name, "Freezer")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.FREEZER.name, "Kühle sie ab!")
            
            LANG.AddToLanguage(l, CLASSES.LUCKYLUKE.name, "Lucky Luke")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.LUCKYLUKE.name, "Das ist kein normaler Luke.")
            
            LANG.AddToLanguage(l, CLASSES.JEDI.name, "Jedi")
            LANG.AddToLanguage(l, "class_desc_" .. CLASSES.JEDI.name, "Die Macht sei mit dir!")
        end
    end)
end
