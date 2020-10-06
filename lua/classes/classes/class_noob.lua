CLASS.AddClass("NOOB", {
	color = Color(60, 60, 80, 255),
	OnSet = function(ply)
		if SERVER then
			ply:GiveArmor(60)
			ply:SetHealth(50)
			ply:SetMaxHealth(50)
		end
	end,
	OnUnset = function(ply)
		if SERVER then
			ply:RemoveArmor(60)
			ply:SetHealth(100)
			ply:SetMaxHealth(100)
		end
	end,
	passiveWeapons = {
		"swep_homingpigeon",
		"weapon_ttt_mirrorfate"
	},
	lang = {
		name = {
			English = "Noob",
			Deutsch = "Anfänger",
			Русский = "Нуб"
		},
		desc = {
			English = "Yep, you're a noob...",
			Deutsch = "Jap, du bist ein Noob...",
			Русский = "Ага, ты нуб..."
		}
	}
}, {random = 15})
