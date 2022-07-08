return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		}
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	-- ['black_money'] = {
	-- 	label = 'Dirty Money',
	-- },

	-- ['burger'] = {
	-- 	label = 'Burger',
	-- 	weight = 220,
	-- 	client = {
	-- 		status = { hunger = 200000 },
	-- 		anim = 'eating',
	-- 		prop = 'burger',
	-- 		usetime = 2500,
	-- 		notification = 'You ate a delicious burger'
	-- 	},
	-- },

	-- ['cola'] = {
	-- 	label = 'eCola',
	-- 	weight = 350,
	-- 	client = {
	-- 		status = { thirst = 200000 },
	-- 		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	-- 		prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	-- 		usetime = 2500,
	-- 		notification = 'You quenched your thirst with cola'
	-- 	}
	-- },

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	-- ['identification'] = {
	-- 	label = 'Identification',
	-- },

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
		consume = 0,
		client = {
			anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
			disable = { move = true, car = true, combat = true },
			usetime = 5000,
			cancel = true
		}
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	-- ['money'] = {
	-- 	label = 'Money',
	-- },

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	-- ['water'] = {
	-- 	label = 'Water',
	-- 	weight = 500,
	-- 	client = {
	-- 		status = { thirst = 200000 },
	-- 		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	-- 		prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
	-- 		usetime = 2500,
	-- 		cancel = true,
	-- 		notification = 'You drank some refreshing water'
	-- 	}
	-- },

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		consume = 0,
		allowArmed = true
	},

	-- ['armour'] = {
	-- 	label = 'Bulletproof Vest',
	-- 	weight = 3000,
	-- 	stack = false,
	-- 	client = {
	-- 		anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
    --         usetime = 3500
	-- 	}
	-- },

	['coke_cutted'] = {
		label = 'cut coke',
		weight = 0,
		stack = true,
		close = true,
		description = "Cutted cocaine"
	},
	
	['weed_amnesia'] = {
		label = 'amnesia 2g',
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g Amnesia"
	},
	
	['weed_ak47_seed'] = {
		label = 'ak47 seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47"
	},
	
	['weapontint_pink'] = {
		label = 'pink tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pink Weapon Tint"
	},
	
	['tunerlaptop'] = {
		label = 'tunerchip',
		weight = 2000,
		stack = true,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing"
	},
	
	['compactrifle_defaultclip'] = {
		label = 'rifle clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Compact Rifle Default Clip"
	},
	
	['weapon_bottle'] = {
		label = 'broken bottle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A broken bottle"
	},
	
	['empty_evidence_bag'] = {
		label = 'empty evidence bag',
		weight = 0,
		stack = true,
		close = true,
		description = "Used a lot to keep DNA from blood, bullet shells and more"
	},
	
	['coke_small_brick'] = {
		label = 'coke package',
		weight = 350,
		stack = true,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space"
	},
	
	['stone_rock'] = {
		label = 'stone rock',
		weight = 0,
		stack = true,
		close = true,
		description = "Stone Rock, mined from a rock"
	},
	
	['duffelbagprop'] = {
		label = 'duffel bag',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['cash'] = {
		label = 'cash',
		weight = 0,
		stack = true,
		close = true,
		description = "Cash money"
	},
	
	['suslv2'] = {
		label = 'suspension level 2',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['markedbills'] = {
		label = 'marked money',
		weight = 1000,
		stack = true,
		close = true,
		description = "Money?"
	},
	
	['grapejuice'] = {
		label = 'grape juice',
		weight = 200,
		stack = true,
		close = true,
		description = "Grape juice is said to be healthy"
	},
	
	['weapon_raypistol'] = {
		label = 'up-n-atomizer',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Raypistol"
	},
	
	['revolver_bodyguardvariant'] = {
		label = 'pistol variant',
		weight = 1000,
		stack = true,
		close = true,
		description = "Revovler Variant"
	},
	
	['armor'] = {
		label = 'armor',
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},
	
	['empty_weed_bag'] = {
		label = 'empty weed bag',
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag"
	},
	
	['diamond_ring'] = {
		label = 'diamond ring',
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!"
	},
	
	['specialcarbine_extendedclip'] = {
		label = 'rifle ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Carbine Extended Clip"
	},
	
	['burger-fries'] = {
		label = 'fries',
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},
	
	['weapon_minismg'] = {
		label = 'mini smg',
		weight = 1000,
		stack = true,
		close = true,
		description = "A mini handheld lightweight machine gun"
	},
	
	['grape'] = {
		label = 'grape',
		weight = 100,
		stack = true,
		close = true,
		description = "Mmmmh yummie, grapes"
	},
	
	['bullpuprifle_luxuryfinish'] = {
		label = 'rifle finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Bullpup Rifle Luxury Finish"
	},
	
	['ironoxide'] = {
		label = 'iron powder',
		weight = 100,
		stack = true,
		close = true,
		description = "Some powder to mix with."
	},
	
	['heavyarmor'] = {
		label = 'heavy armor',
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},
	
	['walkstick'] = {
		label = 'walking stick',
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA"
	},
	
	['weapon_microsmg'] = {
		label = 'micro smg',
		weight = 1000,
		stack = true,
		close = true,
		description = "A handheld lightweight machine gun"
	},
	
	['assaultrifle_drum'] = {
		label = 'rifle drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault Rifle Drum"
	},
	
	['medboxprop'] = {
		label = 'med box',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['tablet'] = {
		label = 'tablet',
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet"
	},
	
	['burger-murdermeal'] = {
		label = 'murder meal',
		weight = 125,
		stack = true,
		close = true,
		description = "An Amazing Murder Meal with a chance of a toy."
	},
	
	['beer'] = {
		label = 'beer',
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!"
	},
	
	['combatpistol_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat Pistol Default Clip"
	},
	
	['sniper_grip'] = {
		label = 'sniper grip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sniper Rifle Grip Attachment"
	},
	
	['machinepistol_extendedclip'] = {
		label = 'smg ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Machine Pistol Extended Clip"
	},
	
	['pistol50_extendedclip'] = {
		label = 'pistol ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = ".50 Pistol Extended Clip"
	},
	
	['weapon_compactrifle'] = {
		label = 'compact rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A compact version of an assault rifle"
	},
	
	['filled_evidence_bag'] = {
		label = 'evidence bag',
		weight = 200,
		stack = true,
		close = true,
		description = "A filled evidence bag to see who committed the crime >:("
	},
	
	['weapon_unarmed'] = {
		label = 'fists',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fisticuffs"
	},
	
	['compactrifle_drum'] = {
		label = 'rifle drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Compact Rifle Drum"
	},
	
	['robbery_yellow_laptop'] = {
		label = 'yellow laptop',
		weight = 0,
		stack = true,
		close = true,
		description = "Yellow Laptop, used to hack things."
	},
	
	['appistol_luxuryfinish'] = {
		label = 'pistol finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "APPistol Luxury Finish"
	},
	
	['weapon_combatpdw'] = {
		label = 'combat pdw',
		weight = 1000,
		stack = true,
		close = true,
		description = "A combat version of a handheld lightweight machine gun"
	},
	
	['armorlv4'] = {
		label = 'armor level 4',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['burger-sodasyrup'] = {
		label = 'soda syrup',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['rubber'] = {
		label = 'rubber',
		weight = 100,
		stack = true,
		close = true,
		description = "Rubber, I believe you can make your own rubber ducky with it :D"
	},
	
	['binoculars'] = {
		label = 'binoculars',
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky..."
	},
	
	['weapon_machinepistol'] = {
		label = 'tec-9',
		weight = 1000,
		stack = true,
		close = true,
		description = "A self-loading pistol capable of burst or fully automatic fire"
	},
	
	['burger-meat'] = {
		label = 'cooked patty',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['weed_white-widow_seed'] = {
		label = 'white widow seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of White Widow"
	},
	
	['microsmg_scope'] = {
		label = 'smg scope',
		weight = 1000,
		stack = true,
		close = true,
		description = "Micro SMG Scope Attachment"
	},
	
	['englv2'] = {
		label = 'engine level 2',
		weight = 30000,
		stack = true,
		close = true,
		description = ""
	},
	
	['shotgun_suppressor'] = {
		label = 'shotgun suppressor',
		weight = 1000,
		stack = true,
		close = true,
		description = "Shotgun Suppressor Attachment"
	},
	
	['microsmg_luxuryfinish'] = {
		label = 'smg finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Micro SMG Luxury Finish"
	},
	
	['weapon_navyrevolver'] = {
		label = 'navy revolver',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Navyrevolver"
	},
	
	['weed_purple-haze_seed'] = {
		label = 'purple haze seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze"
	},
	
	['machinepistol_defaultclip'] = {
		label = 'smg clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Machine Pistol Default Clip"
	},
	
	['lighter'] = {
		label = 'lighter',
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to"
	},
	
	['pistol_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pistol Default Clip"
	},
	
	['ballprop'] = {
		label = 'ball',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['snp_ammo'] = {
		label = 'sniper ammo',
		weight = 1000,
		stack = true,
		close = true,
		description = "Ammo for Sniper Rifles"
	},
	
	['armorlv1'] = {
		label = 'armor level 1',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['weapon_bat'] = {
		label = 'bat',
		weight = 1000,
		stack = true,
		close = true,
		description = "Used for hitting a ball in sports (or other things)"
	},
	
	['weapon_dbshotgun'] = {
		label = 'double-barrel shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession"
	},
	
	['burger-coupon25'] = {
		label = 'burgershot coupon 25% off',
		weight = 15,
		stack = true,
		close = true,
		description = "25% Off Coupon "
	},
	
	['carbinerifle_extendedclip'] = {
		label = 'rifle ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Carbine Rifle Extended Clip"
	},
	
	['burger-bleeder'] = {
		label = 'bleeder',
		weight = 250,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},
	
	['weapon_smg_mk2'] = {
		label = 'smg mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "SMG MK2"
	},
	
	['burger-meatfree'] = {
		label = 'meatfree',
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},
	
	['drill'] = {
		label = 'drill',
		weight = 20000,
		stack = true,
		close = true,
		description = "The real deal..."
	},
	
	['weapon_ceramicpistol'] = {
		label = 'ceramic pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Ceramicpistol"
	},
	
	['rifle_grip'] = {
		label = 'rifle grip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Rifle Grip Attachment"
	},
	
	['weed_joint'] = {
		label = 'joint',
		weight = 0,
		stack = true,
		close = true,
		description = "Weed joint"
	},
	
	['robbery_torch'] = {
		label = 'torch',
		weight = 0,
		stack = true,
		close = true,
		description = "Torch, used to melt things."
	},
	
	['weapon_heavysniper_mk2'] = {
		label = 'heavy sniper mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Heavysniper MK2"
	},
	
	['aluminumoxide'] = {
		label = 'aluminium powder',
		weight = 100,
		stack = true,
		close = true,
		description = "Some powder to mix with"
	},
	
	['meth_packaged'] = {
		label = 'packaged meth',
		weight = 0,
		stack = true,
		close = true,
		description = "Packed meth"
	},
	
	['weapon_katana'] = {
		label = 'katana',
		weight = 1000,
		stack = true,
		close = true,
		description = "Really sharp ninja sword"
	},
	
	['hacking_laptop'] = {
		label = 'hacking laptop',
		weight = 500,
		stack = true,
		close = true,
		description = "A laptop with malicious code"
	},
	
	['coneprop'] = {
		label = 'cone',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['copper_rock'] = {
		label = 'copper rock',
		weight = 0,
		stack = true,
		close = true,
		description = "Copper Rock, mined from a rock"
	},
	
	['englv4'] = {
		label = 'engine level 4',
		weight = 30000,
		stack = true,
		close = true,
		description = ""
	},
	
	['assaultsmg_extendedclip'] = {
		label = 'smg ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault SMG Extended Clip"
	},
	
	['robbery_green_laptop'] = {
		label = 'green laptop',
		weight = 0,
		stack = true,
		close = true,
		description = "Green Laptop, used to hack things."
	},
	
	['thermite'] = {
		label = 'thermite',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn"
	},
	
	['assaultsmg_luxuryfinish'] = {
		label = 'smg finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault SMG Luxury Finish"
	},
	
	['fitbit'] = {
		label = 'fitbit',
		weight = 500,
		stack = true,
		close = true,
		description = "I like fitbit"
	},
	
	['pistol_ammo'] = {
		label = 'pistol ammo',
		weight = 200,
		stack = true,
		close = true,
		description = "Ammo for Pistols"
	},
	
	['weapon_knife'] = {
		label = 'knife',
		weight = 1000,
		stack = true,
		close = true,
		description = "An instrument composed of a blade fixed into a handle, used for cutting or as a weapon"
	},
	
	['whiskey'] = {
		label = 'whiskey',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},
	
	['robbery_lockpick'] = {
		label = 'lockpick',
		weight = 0,
		stack = true,
		close = true,
		description = "Lockpick, used to lockpick things."
	},
	
	['weapon_nightstick'] = {
		label = 'nightstick',
		weight = 1000,
		stack = true,
		close = true,
		description = "A police officer's club or billy"
	},
	
	['weapon_musket'] = {
		label = 'musket',
		weight = 1000,
		stack = true,
		close = true,
		description = "An infantryman's light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder"
	},
	
	['antipatharia_coral'] = {
		label = 'antipatharia',
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals"
	},
	
	['minismg_extendedclip'] = {
		label = 'smg ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Mini SMG Extended Clip"
	},
	
	['gatecrack'] = {
		label = 'gatecrack',
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences"
	},
	
	['rolex'] = {
		label = 'golden watch',
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!"
	},
	
	['weapon_hominglauncher'] = {
		label = 'homing launcher',
		weight = 1000,
		stack = true,
		close = true,
		description = "A weapon fitted with an electronic device that enables it to find and hit a target"
	},
	
	['pinger'] = {
		label = 'pinger',
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location"
	},
	
	['tableprop'] = {
		label = 'table',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['weapon_revolver'] = {
		label = 'revolver',
		weight = 1000,
		stack = true,
		close = true,
		description = "A pistol with revolving chambers enabling several shots to be fired without reloading"
	},
	
	['pistol_luxuryfinish'] = {
		label = 'pistol finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pistol Luxury Finish"
	},
	
	['appistol_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "APPistol Default Clip"
	},
	
	['wine'] = {
		label = 'wine',
		weight = 300,
		stack = true,
		close = true,
		description = "Some good wine to drink on a fine evening"
	},
	
	['weapon_advancedrifle'] = {
		label = 'advanced rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use"
	},
	
	['weapon_briefcase_02'] = {
		label = 'suitcase',
		weight = 1000,
		stack = true,
		close = true,
		description = "Wonderfull for nice vacation to Liberty City"
	},
	
	['casinochips'] = {
		label = 'casino chips',
		weight = 0,
		stack = true,
		close = true,
		description = "Chips For Casino Gambling"
	},
	
	['suslv4'] = {
		label = 'suspension level 4',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['weapon_pistol_mk2'] = {
		label = 'pistol mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "An upgraded small firearm designed to be held in one hand"
	},
	
	['vintagepistol_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Vintage Pistol Default Clip"
	},
	
	['vodka'] = {
		label = 'vodka',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},
	
	['weapon_knuckle'] = {
		label = 'knuckle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows"
	},
	
	['xtcbaggy'] = {
		label = 'bag of xtc',
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby"
	},
	
	['weapon_gusenberg'] = {
		label = 'thompson smg',
		weight = 1000,
		stack = true,
		close = true,
		description = "An automatic rifle commonly referred to as a tommy gun"
	},
	
	['weed_untrimmed'] = {
		label = 'untrimmed weed',
		weight = 0,
		stack = true,
		close = true,
		description = "Untrimmed weed"
	},
	
	['10kgoldchain'] = {
		label = '10k gold chain',
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain"
	},
	
	['glasscutter'] = {
		label = 'glass cutter',
		weight = 1000,
		stack = true,
		close = true,
		description = "A handy instrument to cut through glass, could be useful"
	},
	
	['weapon_sawnoffshotgun'] = {
		label = 'sawn-off shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A sawn-off smoothbore gun for firing small shot at short range"
	},
	
	['weapon_golfclub'] = {
		label = 'golfclub',
		weight = 1000,
		stack = true,
		close = true,
		description = "A club used to hit the ball in golf"
	},
	
	['hunter_animal_fat'] = {
		label = 'animal fat',
		weight = 0,
		stack = true,
		close = true,
		description = "Animal Fat, skinned from an animal."
	},
	
	['weapon_pumpshotgun_mk2'] = {
		label = 'pumpshotgun mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pumpshotgun MK2"
	},
	
	['coke_brick'] = {
		label = 'coke brick',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space"
	},
	
	['weapon_proxmine'] = {
		label = 'proxmine grenade',
		weight = 1000,
		stack = true,
		close = true,
		description = "A bomb placed on the ground that detonates when going within its proximity"
	},
	
	['weapon_combatmg_mk2'] = {
		label = 'combat mg mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Combatmg MK2"
	},
	
	['weapon_dagger'] = {
		label = 'dagger',
		weight = 1000,
		stack = true,
		close = true,
		description = "A short knife with a pointed and edged blade, used as a weapon"
	},
	
	['englv1'] = {
		label = 'engine level 1',
		weight = 30000,
		stack = true,
		close = true,
		description = ""
	},
	
	['weapontint_lspd'] = {
		label = 'lspd tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "LSPD Weapon Tint"
	},
	
	['weapon_snspistol'] = {
		label = 'sns pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "A very small firearm designed to be easily concealed"
	},
	
	['weapon_hazardcan'] = {
		label = 'hazardous jerry can',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Hazardcan"
	},
	
	['burger-moneyshot'] = {
		label = 'moneyshot',
		weight = 300,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},
	
	['bullpuprifle_defaultclip'] = {
		label = 'rifle clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Bullpup Rifle Default Clip"
	},
	
	['weapon_carbinerifle_mk2'] = {
		label = 'carbine rifle mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Carbine Rifle MK2"
	},
	
	['translv1'] = {
		label = 'transmission level 1',
		weight = 20000,
		stack = true,
		close = true,
		description = ""
	},
	
	['brakeslv2'] = {
		label = 'brakes level 2',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['pistol_flashlight'] = {
		label = 'pistol flashlight',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pistol Flashlight Attachment"
	},
	
	['pistol_suppressor'] = {
		label = 'pistol suppressor',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pistol Suppressor Attachment"
	},
	
	['jewels'] = {
		label = 'jewels',
		weight = 500,
		stack = true,
		close = true,
		description = "A pearl necklace, what a great find"
	},
	
	['weapon_heavyshotgun'] = {
		label = 'heavy shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A large smoothbore gun for firing small shot at short range"
	},
	
	['weed_og-kush'] = {
		label = 'ogkush 2g',
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g OG Kush"
	},
	
	['weapon_snowball'] = {
		label = 'snowball',
		weight = 1000,
		stack = true,
		close = true,
		description = "A ball of packed snow, especially one made for throwing at other people for fun"
	},
	
	['labkey'] = {
		label = 'key',
		weight = 500,
		stack = true,
		close = true,
		description = "Key for a lock...?"
	},
	
	['kurkakola'] = {
		label = 'cola',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},
	
	['weapon_vintagepistol'] = {
		label = 'vintage pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "An antique firearm designed to be held in one hand"
	},
	
	['weapon_specialcarbine_mk2'] = {
		label = 'special carbine mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Wpecialcarbine MK2"
	},
	
	['revolver_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Revovler Default Clip"
	},
	
	['marksmanrifle_defaultclip'] = {
		label = 'sniper clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Marksman Rifle Default Clip"
	},
	
	['robbery_blue_keycard'] = {
		label = 'blue card',
		weight = 0,
		stack = true,
		close = true,
		description = "Blue card, used to access things."
	},
	
	['smg_ammo'] = {
		label = 'smg ammo',
		weight = 500,
		stack = true,
		close = true,
		description = "Ammo for Sub Machine Guns"
	},
	
	['meth_pure'] = {
		label = 'pure meth',
		weight = 0,
		stack = true,
		close = true,
		description = "Pure meth"
	},
	
	['weapon_minigun'] = {
		label = 'minigun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute"
	},
	
	['security_card_02'] = {
		label = 'security card b',
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},
	
	['minismg_defaultclip'] = {
		label = 'smg clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Mini SMG Default Clip"
	},
	
	['weapontint_orange'] = {
		label = 'orange tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "Orange Weapon Tint"
	},
	
	['dendrogyra_coral'] = {
		label = 'dendrogyra',
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral"
	},
	
	['smg_luxuryfinish'] = {
		label = 'smg finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "SMG Luxury Finish"
	},
	
	['machinepistol_drum'] = {
		label = 'smg drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Machine Pistol Drum"
	},
	
	['armorlv2'] = {
		label = 'armor level 2',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['armorlv3'] = {
		label = 'armor level 3',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['hunter_animal_cloth'] = {
		label = 'animal cloth',
		weight = 0,
		stack = true,
		close = true,
		description = "Animal Cloth, skinned from an animal."
	},
	
	['combatpdw_defaultclip'] = {
		label = 'smg clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat PDW Default Clip"
	},
	
	['combatpdw_scope'] = {
		label = 'smg scope',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat PDW Scope Attachment"
	},
	
	['weapon_compactlauncher'] = {
		label = 'compact launcher',
		weight = 1000,
		stack = true,
		close = true,
		description = "A compact grenade launcher"
	},
	
	['moneybag'] = {
		label = 'money bag',
		weight = 0,
		stack = true,
		close = true,
		description = "A bag with cash"
	},
	
	['weapon_pumpshotgun'] = {
		label = 'pump shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A pump-action smoothbore gun for firing small shot at short range"
	},
	
	['radioscanner'] = {
		label = 'radio scanner',
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however"
	},
	
	['firework3'] = {
		label = 'wipeout',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},
	
	['weapon_poolcue'] = {
		label = 'poolcue',
		weight = 1000,
		stack = true,
		close = true,
		description = "A stick used to strike a ball, usually the cue ball (or other things)"
	},
	
	['diving_gear'] = {
		label = 'diving gear',
		weight = 30000,
		stack = true,
		close = true,
		description = "An oxygen tank and a rebreather"
	},
	
	['combatpdw_grip'] = {
		label = 'smg grip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat PDW Grip Attachment"
	},
	
	['emslightprop'] = {
		label = 'ems light 1',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['rifle_flashlight'] = {
		label = 'rifle flashlight',
		weight = 1000,
		stack = true,
		close = true,
		description = "Rifle Flashlight Attachment"
	},
	
	['burger-coupon10'] = {
		label = 'burgershot coupon 10% off',
		weight = 15,
		stack = true,
		close = true,
		description = "10% Off Coupon "
	},
	
	['specialcarbine_luxuryfinish'] = {
		label = 'rifle finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Carbine Luxury Finish"
	},
	
	['weapon_briefcase'] = {
		label = 'briefcase',
		weight = 1000,
		stack = true,
		close = true,
		description = "A briefcase for storing important documents"
	},
	
	['englv3'] = {
		label = 'engine level 3',
		weight = 30000,
		stack = true,
		close = true,
		description = ""
	},
	
	['revolver_vipvariant'] = {
		label = 'pistol variant',
		weight = 1000,
		stack = true,
		close = true,
		description = "Revovler Variant"
	},
	
	['heavyshotgun_extendedclip'] = {
		label = 'shotgun ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy Shotgun Extended Clip"
	},
	
	['weapon_revolver_mk2'] = {
		label = 'violence',
		weight = 1000,
		stack = true,
		close = true,
		description = "da Violence"
	},
	
	['snowball'] = {
		label = 'snowball',
		weight = 0,
		stack = true,
		close = true,
		description = "Should have catched it :D"
	},
	
	['burger-lettuce'] = {
		label = 'lettuce',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['harness'] = {
		label = 'race harness',
		weight = 1000,
		stack = true,
		close = true,
		description = "Racing Harness so no matter what you stay in the car"
	},
	
	['weapon_pistol50'] = {
		label = 'pistol .50',
		weight = 1000,
		stack = true,
		close = true,
		description = "A .50 caliber firearm designed to be held with both hands"
	},
	
	['certificate'] = {
		label = 'certificate',
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff"
	},
	
	['weapon_battleaxe'] = {
		label = 'pickaxe',
		weight = 1000,
		stack = true,
		close = true,
		description = "A large Pickaxe"
	},
	
	['weapon_melee_hatchet'] = {
		label = 'hatchet',
		weight = 0,
		stack = true,
		close = true,
		description = "An Hatchet"
	},
	
	['weapon_carbinerifle'] = {
		label = 'carbine rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A lightweight automatic rifle"
	},
	
	['smg_defaultclip'] = {
		label = 'smg clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "SMG Default Clip"
	},
	
	['carbinerifle_scope'] = {
		label = 'rifle scope',
		weight = 1000,
		stack = true,
		close = true,
		description = "Carbine Rifle Scope"
	},
	
	['nitrous'] = {
		label = 'nitrous',
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D"
	},
	
	['weapon_pistol'] = {
		label = 'walther p99',
		weight = 1000,
		stack = true,
		close = true,
		description = "A small firearm designed to be held in one hand"
	},
	
	['weed_amnesia_seed'] = {
		label = 'amnesia seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia"
	},
	
	['cleaningkit'] = {
		label = 'cleaning kit',
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!"
	},
	
	['weapon_rpg'] = {
		label = 'rpg',
		weight = 1000,
		stack = true,
		close = true,
		description = "A rocket-propelled grenade launcher"
	},
	
	['weapon_switchblade'] = {
		label = 'switchblade',
		weight = 1000,
		stack = true,
		close = true,
		description = "A knife with a blade that springs out from the handle when a button is pressed"
	},
	
	['chemicals'] = {
		label = 'chemicals',
		weight = 0,
		stack = true,
		close = true,
		description = "Chemicals"
	},
	
	['advancedlockpick'] = {
		label = 'advanced lockpick',
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers"
	},
	
	['suslv3'] = {
		label = 'suspension level 3',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['assaultrifle_defaultclip'] = {
		label = 'rifle clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault Rifle Default Clip"
	},
	
	['microsmg_defaultclip'] = {
		label = 'smg clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Micro SMG Default Clip"
	},
	
	['snspistol_grip'] = {
		label = 'pistol grip',
		weight = 1000,
		stack = true,
		close = true,
		description = "SNS Pistol Grip Attachment"
	},
	
	['weapon_bullpuprifle_mk2'] = {
		label = 'bullpup rifle mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Bull Puprifle MK2"
	},
	
	['weapon_grenade'] = {
		label = 'grenade',
		weight = 1000,
		stack = true,
		close = true,
		description = "A handheld throwable bomb"
	},
	
	['weapon_marksmanrifle'] = {
		label = 'marksman rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A very accurate single-fire rifle"
	},
	
	['specialcarbine_drum'] = {
		label = 'rifle drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Carbine Drum"
	},
	
	['sniper_scope'] = {
		label = 'sniper scope',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sniper Rifle Scope Attachment"
	},
	
	['robbery_drill'] = {
		label = 'drill',
		weight = 0,
		stack = true,
		close = true,
		description = "Drill, used to drill things."
	},
	
	['appistol_extendedclip'] = {
		label = 'pistol ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "APPistol Extended Clip"
	},
	
	['weapon_bzgas'] = {
		label = 'bz gas',
		weight = 1000,
		stack = true,
		close = true,
		description = "A cannister of gas that causes extreme pain"
	},
	
	['marksmanrifle_luxuryfinish'] = {
		label = 'sniper finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Marksman Rifle Luxury Finish"
	},
	
	['weapon_handcuffs'] = {
		label = 'handcuffs',
		weight = 1000,
		stack = true,
		close = true,
		description = "A pair of lockable linked metal rings for securing a prisoner's wrists"
	},
	
	['hunter_meat_lion'] = {
		label = 'lion meat',
		weight = 0,
		stack = true,
		close = true,
		description = "Lion Meat, skinned from a lion."
	},
	
	['iron'] = {
		label = 'iron',
		weight = 100,
		stack = true,
		close = true,
		description = "Handy piece of metal that you can probably use for something"
	},
	
	['tosti'] = {
		label = 'grilled cheese sandwich',
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat"
	},
	
	['weapon_doubleaction'] = {
		label = 'double action revolver',
		weight = 1000,
		stack = true,
		close = true,
		description = "Double Action Revolver"
	},
	
	['dildoprop'] = {
		label = 'dildo',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['shotgun_ammo'] = {
		label = 'shotgun ammo',
		weight = 500,
		stack = true,
		close = true,
		description = "Ammo for Shotguns"
	},
	
	['weed_leaf'] = {
		label = 'weed leaf',
		weight = 0,
		stack = true,
		close = true,
		description = "Weed leaf"
	},
	
	['weapontint_gold'] = {
		label = 'gold tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "Gold Weapon Tint"
	},
	
	['weapon_militaryrifle'] = {
		label = 'military rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Militaryrifle"
	},
	
	['chairprop'] = {
		label = 'chair',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['weed_packaged'] = {
		label = 'packaged weed',
		weight = 0,
		stack = true,
		close = true,
		description = "Packaged weed"
	},
	
	['bullpuprifle_extendedclip'] = {
		label = 'rifle ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Bullpup Rifle Extended Clip"
	},
	
	['lawyerpass'] = {
		label = 'lawyer pass',
		weight = 0,
		stack = true,
		close = true,
		description = "Pass exclusive to lawyers to show they can represent a suspect"
	},
	
	['visa'] = {
		label = 'visa card',
		weight = 0,
		stack = true,
		close = true,
		description = "Visa can be used via ATM"
	},
	
	['twerks_candy'] = {
		label = 'twerks',
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O"
	},
	
	['security_card_01'] = {
		label = 'security card a',
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},
	
	['water_bottle'] = {
		label = 'bottle of water',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},
	
	['combatpistol_extendedclip'] = {
		label = 'pistol ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat Pistol Extended Clip"
	},
	
	['weed_skunk'] = {
		label = 'skunk 2g',
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g Skunk"
	},
	
	['weapon_grenadelauncher_smoke'] = {
		label = 'smoke grenade launcher',
		weight = 1000,
		stack = true,
		close = true,
		description = "A bomb that produces a lot of smoke when it explodes"
	},
	
	['weapon_pipebomb'] = {
		label = 'pipe bomb',
		weight = 1000,
		stack = true,
		close = true,
		description = "A homemade bomb, the components of which are contained in a pipe"
	},
	
	['weapon_petrolcan'] = {
		label = 'petrol can',
		weight = 1000,
		stack = true,
		close = true,
		description = "A robust liquid container made from pressed steel"
	},
	
	['robbery_red_keycard'] = {
		label = 'red card',
		weight = 0,
		stack = true,
		close = true,
		description = "Red card, used to access things."
	},
	
	['drugboxprop'] = {
		label = 'drugbox',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['robbery_painting'] = {
		label = 'painting roll',
		weight = 0,
		stack = true,
		close = true,
		description = "Painting Roll"
	},
	
	['robbery_boltcutter'] = {
		label = 'boltcutter',
		weight = 0,
		stack = true,
		close = true,
		description = "BoltCutter, used to cut things."
	},
	
	['specialcarbine_defaultclip'] = {
		label = 'rifle clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Carbine Default Clip"
	},
	
	['assaultrifle_extendedclip'] = {
		label = 'rifle ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault Rifle Extended Clip"
	},
	
	['painkillers'] = {
		label = 'painkillers',
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again"
	},
	
	['advancedrifle_extendedclip'] = {
		label = 'rifle ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Advanced Rifle Extended Clip"
	},
	
	['smg_drum'] = {
		label = 'smg drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "SMG Drum"
	},
	
	['assaultshotgun_extendedclip'] = {
		label = 'shotgun ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault Shotgun Extended Clip"
	},
	
	['firstaid'] = {
		label = 'first aid',
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet"
	},
	
	['weapon_wrench'] = {
		label = 'wrench',
		weight = 1000,
		stack = true,
		close = true,
		description = "A tool used for gripping and turning nuts, bolts, pipes, etc"
	},
	
	['methbrick'] = {
		label = 'meth brick',
		weight = 100,
		stack = true,
		close = true,
		description = "A brick of Meth"
	},
	
	['weapon_railgun'] = {
		label = 'railgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A weapon that uses electromagnetic force to launch high velocity projectiles"
	},
	
	['rifle_suppressor'] = {
		label = 'rifle suppressor',
		weight = 1000,
		stack = true,
		close = true,
		description = "Rifle Suppressor Attachment"
	},
	
	['compactrifle_extendedclip'] = {
		label = 'rifle ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Compact Rifle Extended Clip"
	},
	
	['driver_license'] = {
		label = 'drivers license',
		weight = 0,
		stack = true,
		close = true,
		description = "Permit to show you can drive a vehicle"
	},
	
	['electronickit'] = {
		label = 'electronic kit',
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?"
	},
	
	['weapon_heavypistol'] = {
		label = 'heavy pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "A hefty firearm designed to be held in one hand (or attempted)"
	},
	
	['weapon_combatmg'] = {
		label = 'combat mg',
		weight = 1000,
		stack = true,
		close = true,
		description = "A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed"
	},
	
	['steel'] = {
		label = 'steel',
		weight = 100,
		stack = true,
		close = true,
		description = "Nice piece of metal that you can probably use for something"
	},
	
	['weed_white-widow'] = {
		label = 'white widow 2g',
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g White Widow"
	},
	
	['hunter_animal_leather'] = {
		label = 'animal leather',
		weight = 0,
		stack = true,
		close = true,
		description = "Animal Leather, skinned from an animal."
	},
	
	['robbery_glasscutter'] = {
		label = 'glass cutter',
		weight = 0,
		stack = true,
		close = true,
		description = "Glasscutter, used to cut glass."
	},
	
	['hunter_meat_chicken'] = {
		label = 'chicken meat',
		weight = 0,
		stack = true,
		close = true,
		description = "Chicken Meat, skinned from a chicken."
	},
	
	['weed_purple-haze'] = {
		label = 'purple haze 2g',
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g Purple Haze"
	},
	
	['weed_ak47'] = {
		label = 'ak47 2g',
		weight = 200,
		stack = true,
		close = true,
		description = "A weed bag with 2g AK47"
	},
	
	['weapon_ball'] = {
		label = 'ball',
		weight = 1000,
		stack = true,
		close = true,
		description = "A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game"
	},
	
	['weapontint_green'] = {
		label = 'green tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "Green Weapon Tint"
	},
	
	['rolling_paper'] = {
		label = 'rolling paper',
		weight = 0,
		stack = true,
		close = true,
		description = "Rolling papers"
	},
	
	['gusenberg_defaultclip'] = {
		label = 'rifle clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Gusenberg Default Clip"
	},
	
	['snspistol_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "SNS Pistol Default Clip"
	},
	
	['weed_skunk_seed'] = {
		label = 'skunk seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk"
	},
	
	['c4'] = {
		label = 'c4',
		weight = 500,
		stack = true,
		close = true,
		description = "An explosive device, you should be careful"
	},
	
	['advancedrifle_luxuryfinish'] = {
		label = 'rifle finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Advanced Rifle Luxury Finish"
	},
	
	['brakeslv3'] = {
		label = 'brakes level 3',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['plastic'] = {
		label = 'plastic',
		weight = 100,
		stack = true,
		close = true,
		description = "RECYCLE! - Greta Thunberg 2019"
	},
	
	['oxy'] = {
		label = 'prescription oxy',
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off"
	},
	
	['advancedrifle_defaultclip'] = {
		label = 'rifle clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Advanced Rifle Default Clip"
	},
	
	['aluminum'] = {
		label = 'aluminium',
		weight = 100,
		stack = true,
		close = true,
		description = "Nice piece of metal that you can probably use for something"
	},
	
	['repairkit'] = {
		label = 'repairkit',
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},
	
	['rifle_ammo'] = {
		label = 'rifle ammo',
		weight = 1000,
		stack = true,
		close = true,
		description = "Ammo for Rifles"
	},
	
	['heavypistol_grip'] = {
		label = 'pistol grip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy Pistol Grip Attachment"
	},
	
	['metalscrap'] = {
		label = 'metal scrap',
		weight = 100,
		stack = true,
		close = true,
		description = "You can probably make something nice out of this"
	},
	
	['emp_ammo'] = {
		label = 'emp ammo',
		weight = 200,
		stack = true,
		close = true,
		description = "Ammo for EMP Launcher"
	},
	
	['big_red_ruby'] = {
		label = 'big red ruby',
		weight = 500,
		stack = true,
		close = true,
		description = "A box of diamonds seems like the jackpot to me!"
	},
	
	['handcuffs'] = {
		label = 'handcuffs',
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?"
	},
	
	['wood_processed'] = {
		label = 'processed wood',
		weight = 0,
		stack = true,
		close = true,
		description = "Processed Wood, processed from raw wood."
	},
	
	['weapon_specialcarbine'] = {
		label = 'special carbine',
		weight = 1000,
		stack = true,
		close = true,
		description = "An extremely versatile assault rifle for any combat situation"
	},
	
	['trojan_usb'] = {
		label = 'trojan usb',
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems"
	},
	
	['mg_ammo'] = {
		label = 'mg ammo',
		weight = 1000,
		stack = true,
		close = true,
		description = "Ammo for Machine Guns"
	},
	
	['marksmanrifle_scope'] = {
		label = 'sniper scope',
		weight = 1000,
		stack = true,
		close = true,
		description = "Marksman Rifle Scope Attachment"
	},
	
	['weapon_combatshotgun'] = {
		label = 'combat shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Combatshotgun"
	},
	
	['screwdriverset'] = {
		label = 'toolkit',
		weight = 1000,
		stack = true,
		close = true,
		description = "Very useful to screw... screws..."
	},
	
	['weapon_molotov'] = {
		label = 'molotov',
		weight = 1000,
		stack = true,
		close = true,
		description = "A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting"
	},
	
	['painting'] = {
		label = 'painting',
		weight = 1500,
		stack = true,
		close = true,
		description = "A work of art... literally"
	},
	
	['translv2'] = {
		label = 'transmission level 2',
		weight = 20000,
		stack = true,
		close = true,
		description = ""
	},
	
	['tyreprop'] = {
		label = 'tyre',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['jerry_can'] = {
		label = 'jerrycan 20l',
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel"
	},
	
	['iron_rock'] = {
		label = 'iron rock',
		weight = 0,
		stack = true,
		close = true,
		description = "Iron Rock, mined from a rock"
	},
	
	['assaultshotgun_defaultclip'] = {
		label = 'shotgun clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault Shotgun Default Clip"
	},
	
	['weapon_autoshotgun'] = {
		label = 'auto shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A shotgun capable of rapid continous fire"
	},
	
	['advancedrepairkit'] = {
		label = 'advanced repairkit',
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},
	
	['robbery_grinder'] = {
		label = 'grinder',
		weight = 0,
		stack = true,
		close = true,
		description = "Grinder, used to grind things."
	},
	
	['marksmanrifle_extendedclip'] = {
		label = 'sniper ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Marksman Rifle Extended Clip"
	},
	
	['laptop'] = {
		label = 'laptop',
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop"
	},
	
	['robbery_c4'] = {
		label = 'c4',
		weight = 0,
		stack = true,
		close = true,
		description = "C4, used to explode things."
	},
	
	['weapon_raycarbine'] = {
		label = 'unholy hellbringer',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Raycarbine"
	},
	
	['combatpdw_extendedclip'] = {
		label = 'smg ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat PDW Extended Clip"
	},
	
	['cokebaggy'] = {
		label = 'bag of coke',
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick"
	},
	
	['heavypistol_extendedclip'] = {
		label = 'pistol ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy Pistol Extended Clip"
	},
	
	['pistol50_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = ".50 Pistol Default Clip"
	},
	
	['armorlv5'] = {
		label = 'armor level 5',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['robbery_red_pen'] = {
		label = 'red pen',
		weight = 0,
		stack = true,
		close = true,
		description = "Red Pen, used to hack things."
	},
	
	['snspistol_extendedclip'] = {
		label = 'pistol ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "SNS Pistol Extended Clip"
	},
	
	['goldbar'] = {
		label = 'gold bar',
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me"
	},
	
	['firework1'] = {
		label = '2brothers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},
	
	['carbinerifle_defaultclip'] = {
		label = 'rifle clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Carbine Rifle Default Clip"
	},
	
	['toolboxprop'] = {
		label = 'tool box',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['weapon_hatchet'] = {
		label = 'hatchet',
		weight = 1000,
		stack = true,
		close = true,
		description = "A small axe with a short handle for use in one hand"
	},
	
	['turbo'] = {
		label = 'turbocharger',
		weight = 10000,
		stack = true,
		close = true,
		description = ""
	},
	
	['assaultsmg_defaultclip'] = {
		label = 'smg clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault SMG Default Clip"
	},
	
	['burger-tomato'] = {
		label = 'tomato',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['weapon_sniperrifle'] = {
		label = 'sniper rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A high-precision, long-range rifle"
	},
	
	['carbinerifle_luxuryfinish'] = {
		label = 'rifle finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Carbine Rifle Luxury Finish"
	},
	
	['robbery_thermite'] = {
		label = 'thermite',
		weight = 0,
		stack = true,
		close = true,
		description = "Thermite, used to melt things."
	},
	
	['stickynote'] = {
		label = 'sticky note',
		weight = 0,
		stack = true,
		close = true,
		description = "Sometimes handy to remember something :)"
	},
	
	['copper'] = {
		label = 'copper',
		weight = 0,
		stack = true,
		close = true,
		description = "Handy piece of metal that you can probably use for something"
	},
	
	['gold_rock'] = {
		label = 'gold rock',
		weight = 0,
		stack = true,
		close = true,
		description = "Gold Rock, mined from a rock"
	},
	
	['pumpshotgun_luxuryfinish'] = {
		label = 'shotgun finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pump Shotgun Luxury Finish"
	},
	
	['microsmg_extendedclip'] = {
		label = 'smg ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Micro SMG Extended Clip"
	},
	
	['weapon_grenadelauncher'] = {
		label = 'grenade launcher',
		weight = 1000,
		stack = true,
		close = true,
		description = "A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead"
	},
	
	['weed_brick'] = {
		label = 'weed brick',
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers."
	},
	
	['weapon_stungun'] = {
		label = 'taser',
		weight = 1000,
		stack = true,
		close = true,
		description = "A weapon firing barbs attached by wires to batteries, causing temporary paralysis"
	},
	
	['police_stormram'] = {
		label = 'stormram',
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors"
	},
	
	['wood_raw'] = {
		label = 'raw wood',
		weight = 0,
		stack = true,
		close = true,
		description = "Raw Wood, choped from a tree"
	},
	
	['sawnoffshotgun_luxuryfinish'] = {
		label = 'shotgun finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sawn Off Shotgun Luxury Finish"
	},
	
	['pistol50_luxuryfinish'] = {
		label = 'pistol finish',
		weight = 1000,
		stack = true,
		close = true,
		description = ".50 Pistol Luxury Finish"
	},
	
	['weed_og-kush_seed'] = {
		label = 'ogkush seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush"
	},
	
	['gold_ring'] = {
		label = 'gold ring',
		weight = 30,
		stack = true,
		close = true,
		description = "A gold ring seems like the jackpot to me!"
	},
	
	['weapon_gadgetpistol'] = {
		label = 'perico pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Gadgetpistol"
	},
	
	['weapon_marksmanrifle_mk2'] = {
		label = 'marksman rifle mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Marksmanrifle MK2"
	},
	
	['weapon_machete'] = {
		label = 'machete',
		weight = 1000,
		stack = true,
		close = true,
		description = "A broad, heavy knife used as a weapon"
	},
	
	['samsungphone'] = {
		label = 'samsung s10',
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},
	
	['weapon_assaultrifle'] = {
		label = 'assault rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A rapid-fire, magazine-fed automatic rifle designed for infantry use"
	},
	
	['cocaineleaf'] = {
		label = 'coca leaf',
		weight = 0,
		stack = true,
		close = true,
		description = "Cocaine leaf"
	},
	
	['suslv1'] = {
		label = 'suspension level 1',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['id_card'] = {
		label = 'id card',
		weight = 0,
		stack = true,
		close = true,
		description = "A card containing all your information to identify yourself"
	},
	
	['box_of_diamonds'] = {
		label = 'box of diamonds',
		weight = 500,
		stack = true,
		close = true,
		description = "A box of diamonds seems like the jackpot to me!"
	},
	
	['burger-potato'] = {
		label = 'bag of potatoes',
		weight = 1500,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['carbinerifle_drum'] = {
		label = 'rifle drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Carbine Rifle Drum"
	},
	
	['weapon_firework'] = {
		label = 'firework launcher',
		weight = 1000,
		stack = true,
		close = true,
		description = "A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited"
	},
	
	['weapon_smokegrenade'] = {
		label = 'smoke grenade',
		weight = 1000,
		stack = true,
		close = true,
		description = "An explosive charge that can be remotely detonated"
	},
	
	['weapon_garbagebag'] = {
		label = 'garbage bag',
		weight = 1000,
		stack = true,
		close = true,
		description = "A garbage bag"
	},
	
	['burger-toy1'] = {
		label = 'action figure',
		weight = 50,
		stack = true,
		close = true,
		description = "An Action Figure From the late 90's"
	},
	
	['burger-toy2'] = {
		label = 'pink teddy',
		weight = 50,
		stack = true,
		close = true,
		description = "A Fluffy Pink Teddy from the Atic"
	},
	
	['robbery_green_keycard'] = {
		label = 'green card',
		weight = 0,
		stack = true,
		close = true,
		description = "Greencard, used to access things."
	},
	
	['trolleyprop'] = {
		label = 'trolley',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['snipermax_scope'] = {
		label = 'sniper max scope',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sniper Rifle Max Scope Attachment"
	},
	
	['assaultrifle_luxuryfinish'] = {
		label = 'rifle finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault Rifle Luxury Finish"
	},
	
	['translv3'] = {
		label = 'transmission level 3',
		weight = 20000,
		stack = true,
		close = true,
		description = ""
	},
	
	['weaponlicense'] = {
		label = 'weapon license',
		weight = 0,
		stack = true,
		close = true,
		description = "Weapon License"
	},
	
	['heavyshotgun_drum'] = {
		label = 'shotgun drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy Shotgun Drum"
	},
	
	['smg_scope'] = {
		label = 'smg scope',
		weight = 1000,
		stack = true,
		close = true,
		description = "SMG Scope Attachment"
	},
	
	['smg_extendedclip'] = {
		label = 'smg ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "SMG Extended Clip"
	},
	
	['printerdocument'] = {
		label = 'document',
		weight = 500,
		stack = true,
		close = true,
		description = "A nice document"
	},
	
	['weapon_crowbar'] = {
		label = 'crowbar',
		weight = 1000,
		stack = true,
		close = true,
		description = "An iron bar with a flattened end, used as a lever"
	},
	
	['firework4'] = {
		label = 'weeping willow',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},
	
	['burger-mshake'] = {
		label = 'milkshake',
		weight = 125,
		stack = true,
		close = true,
		description = "Hand-scooped for you!"
	},
	
	['hunter_meat_deer'] = {
		label = 'deer meat',
		weight = 0,
		stack = true,
		close = true,
		description = "Deer Meat, skinned from a deer."
	},
	
	['hq_scale'] = {
		label = 'hq scale',
		weight = 0,
		stack = true,
		close = true,
		description = "High quality scale"
	},
	
	['weapon_marksmanpistol'] = {
		label = 'marksman pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "A very accurate small firearm designed to be held in one hand"
	},
	
	['pistol_extendedclip'] = {
		label = 'pistol ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pistol Extended Clip"
	},
	
	['weapon_smg'] = {
		label = 'smg',
		weight = 1000,
		stack = true,
		close = true,
		description = "A handheld lightweight machine gun"
	},
	
	['plastic_bags'] = {
		label = 'plastic bag',
		weight = 0,
		stack = true,
		close = true,
		description = "Plastic bag"
	},
	
	['weapon_fireextinguisher'] = {
		label = 'fire extinguisher',
		weight = 1000,
		stack = true,
		close = true,
		description = "A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire"
	},
	
	['laptopprop'] = {
		label = 'laptop',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['combatpdw_drum'] = {
		label = 'smg drum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat PDW Drum"
	},
	
	['cashcaseprop'] = {
		label = 'cash case',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['heavyshotgun_defaultclip'] = {
		label = 'shotgun clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy Shotgun Default Clip"
	},
	
	['ifaks'] = {
		label = 'ifaks',
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover."
	},
	
	['burger-bun'] = {
		label = 'bun',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['mastercard'] = {
		label = 'master card',
		weight = 0,
		stack = true,
		close = true,
		description = "MasterCard can be used via ATM"
	},
	
	['weapon_assaultrifle_mk2'] = {
		label = 'assault rifle mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "Assault Rifle MK2"
	},
	
	['burger-coupon15'] = {
		label = 'burgershot coupon 15% off',
		weight = 15,
		stack = true,
		close = true,
		description = "15% Off Coupon "
	},
	
	['gusenberg_extendedclip'] = {
		label = 'rifle ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Gusenberg Extended Clip"
	},
	
	['weapon_stickybomb'] = {
		label = 'c4',
		weight = 1000,
		stack = true,
		close = true,
		description = "An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes"
	},
	
	['heavysniper_defaultclip'] = {
		label = 'sniper clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy Sniper Default Clip"
	},
	
	['vintagepistol_extendedclip'] = {
		label = 'pistol ext clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Vintage Pistol Default Clip"
	},
	
	['brakeslv1'] = {
		label = 'brakes level 1',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},
	
	['sandwich'] = {
		label = 'sandwich',
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach"
	},
	
	['weapon_assaultshotgun'] = {
		label = 'assault shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "An assault version of asmoothbore gun for firing small shot at short range"
	},
	
	['coke_packaged'] = {
		label = 'packaged coke',
		weight = 0,
		stack = true,
		close = true,
		description = "Packaged cocaine"
	},
	
	['firework2'] = {
		label = 'poppelers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},
	
	['burger-heartstopper'] = {
		label = 'heartstopper',
		weight = 2500,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},
	
	['iphone'] = {
		label = 'iphone',
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},
	
	['burger-softdrink'] = {
		label = 'soft drink',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ice Cold Drink."
	},
	
	['weapon_flare'] = {
		label = 'flare pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "A small pyrotechnic devices used for illumination and signalling"
	},
	
	['weapon_appistol'] = {
		label = 'ap pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "A small firearm designed to be held in one hand that is automatic"
	},
	
	['burger-torpedo'] = {
		label = 'torpedo',
		weight = 310,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},
	
	['meth'] = {
		label = 'meth',
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth"
	},
	
	['robbery_red_laptop'] = {
		label = 'red laptop',
		weight = 0,
		stack = true,
		close = true,
		description = "Red Laptop, used to hack things."
	},
	
	['joint'] = {
		label = 'joint',
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you"
	},
	
	['weapontint_black'] = {
		label = 'default tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "Default/Black Weapon Tint"
	},
	
	['meth_ingredient'] = {
		label = 'meth ingredients',
		weight = 0,
		stack = true,
		close = true,
		description = "Meth ingredients"
	},
	
	['emslight2prop'] = {
		label = 'ems light 2',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['weapon_bullpupshotgun'] = {
		label = 'bullpup shotgun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A compact smoothbore gun for firing small shot at short range"
	},
	
	['weapon_snspistol_mk2'] = {
		label = 'sns pistol mk ii',
		weight = 1000,
		stack = true,
		close = true,
		description = "SNS Pistol MK2"
	},
	
	['goldchain'] = {
		label = 'golden chain',
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!"
	},
	
	['weapon_assaultsmg'] = {
		label = 'assault smg',
		weight = 1000,
		stack = true,
		close = true,
		description = "An assault version of a handheld lightweight machine gun"
	},
	
	['weapon_mg'] = {
		label = 'machinegun',
		weight = 1000,
		stack = true,
		close = true,
		description = "An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed"
	},
	
	['snikkel_candy'] = {
		label = 'snikkel',
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O"
	},
	
	['weapon_bullpuprifle'] = {
		label = 'bullpup rifle',
		weight = 1000,
		stack = true,
		close = true,
		description = "A compact automatic assault rifle"
	},
	
	['coffee'] = {
		label = 'coffee',
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine"
	},
	
	['weapon_rayminigun'] = {
		label = 'widowmaker',
		weight = 1000,
		stack = true,
		close = true,
		description = "Weapon Rayminigun"
	},
	
	['burger-raw'] = {
		label = 'raw patty',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['weapon_remotesniper'] = {
		label = 'remote sniper',
		weight = 1000,
		stack = true,
		close = true,
		description = "A portable high-precision, long-range rifle"
	},
	
	['weapon_heavysniper'] = {
		label = 'heavy sniper',
		weight = 1000,
		stack = true,
		close = true,
		description = "An upgraded high-precision, long-range rifle"
	},
	
	['weapon_flashlight'] = {
		label = 'flashlight',
		weight = 1000,
		stack = true,
		close = true,
		description = "A battery-operated portable light"
	},
	
	['weapontint_plat'] = {
		label = 'platinum tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "Platinum Weapon Tint"
	},
	
	['weed_nutrition'] = {
		label = 'plant fertilizer',
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition"
	},
	
	['heavypistol_defaultclip'] = {
		label = 'pistol clip',
		weight = 1000,
		stack = true,
		close = true,
		description = "Heavy Pistol Default Clip"
	},
	
	['carbatteryprop'] = {
		label = 'car battery',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['medbagprop'] = {
		label = 'med bag',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whats inside?"
	},
	
	['glass'] = {
		label = 'glass',
		weight = 100,
		stack = true,
		close = true,
		description = "It is very fragile, watch out"
	},
	
	['crack_baggy'] = {
		label = 'bag of crack',
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster"
	},
	
	['cryptostick'] = {
		label = 'crypto stick',
		weight = 200,
		stack = true,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?"
	},
	
	['burger-mshakeformula'] = {
		label = 'milkshake formula',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},
	
	['weapon_bread'] = {
		label = 'baquette',
		weight = 1000,
		stack = true,
		close = true,
		description = "Bread...?"
	},
	
	['weapon_flaregun'] = {
		label = 'flare gun',
		weight = 1000,
		stack = true,
		close = true,
		description = "A handgun for firing signal rockets"
	},
	
	['weapontint_army'] = {
		label = 'army tint',
		weight = 1000,
		stack = true,
		close = true,
		description = "Army Weapon Tint"
	},
	
	['sniperrifle_defaultclip'] = {
		label = 'sniper suppressor',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sniper Rifle Default Clip"
	},
	
	['weapon_combatpistol'] = {
		label = 'combat pistol',
		weight = 1000,
		stack = true,
		close = true,
		description = "A combat version small firearm designed to be held in one hand"
	},
	
	['combatpistol_luxuryfinish'] = {
		label = 'pistol finish',
		weight = 1000,
		stack = true,
		close = true,
		description = "Combat Pistol Luxury Finish"
	},
	
	['hunter_animal_bonefragments'] = {
		label = 'animal bone fragments',
		weight = 0,
		stack = true,
		close = true,
		description = "Animal Bone Fragments, skinned from an animal."
	},
	
	['weapon_stone_hatchet'] = {
		label = 'stone hatchet',
		weight = 1000,
		stack = true,
		close = true,
		description = "Stone ax"
	},
	
	['gold'] = {
		label = 'gold',
		weight = 0,
		stack = true,
		close = true,
		description = "Raw Gold"
	},
	
	['weapon_hammer'] = {
		label = 'hammer',
		weight = 1000,
		stack = true,
		close = true,
		description = "Used for jobs such as breaking things (legs) and driving in nails"
	},
	
	['hunter_meat_boar'] = {
		label = 'boar meat',
		weight = 0,
		stack = true,
		close = true,
		description = "Boar Meat, skinned from a boar."
	},

}
