extends Node

const turrets := {
	"gatling": {
		"stats": {
			"damage": 10,
			"attack_speed": 2.0,
			"attack_range": 200.0,
			"bulletSpeed": 200.0,
			"bulletPierce": 1,
		},
		"upgrades": {
			"damage": {"amount": 2.5, "multiplies": false},
			"attack_speed": {"amount": 1.5, "multiplies": true},
		},
		"name": "Gatling Gun",
		"cost": 50,
		"upgrade_cost": 50,
		"max_level": 2,
		"scene": "res://Scenes/turrets/projectileTurret/projectileTurret.tscn",
		"sprite": "res://Assets/turrets/Guard.png",
		"scale": 1.0,
		"rotates": true,
		"bullet": "fire",
	},
	"laser": {
		"stats": {
			"damage": 1,
			"attack_speed": 20.0,
			"attack_range": 250.0,
			"bulletSpeed": 400.0,
			"bulletPierce": 4,
		},
		"upgrades": {
			"damage": {"amount": 2.5, "multiplies": false},
			"attack_speed": {"amount": 1.5, "multiplies": true},
		},
		"name": "Flamethrower",
		"cost": 70,
		"upgrade_cost": 50,
		"max_level": 3,
		"scene": "res://Scenes/turrets/projectileTurret/projectileTurret.tscn",
		"sprite": "res://Assets/turrets/AntiTank.png",
		"scale": 1.0,
		"rotates": false,
		"bullet": "laser",
	},
	"ray": {
		"stats": {
			"damage": 0.5,
			"attack_speed": 0.5,
			"attack_range": 300.0,
			"ray_duration": 1.0,
			"ray_length": 300.0,
		},
		"upgrades": {
			"damage": {"amount": 1.0, "multiplies": false},
			"attack_speed": {"amount": 1.5, "multiplies": true},
			"ray_length": {"amount": 1.5, "multiplies": true},
			"ray_duration": {"amount": 1.5, "multiplies": true},
		},
		"name": "Raygun",
		"cost": 50,
		"upgrade_cost": 50,
		"max_level": 3,
		"scene": "res://Scenes/turrets/rayTurret/rayTurret.tscn",
		"sprite": "res://Assets/turrets/Forager.png",
		"scale": 1.0,
		"rotates": true,
	},
	"melee": {
		"stats": {
			"damage": 2.0,
			"attack_speed": 1.5,
			"attack_range": 100.0,
			"slow_down": 0.6,
		},
		"upgrades": {
			"damage": {"amount": 2.5, "multiplies": false},
			"attack_speed": {"amount": 1.5, "multiplies": true},
			"slow_down": {"amount:": -0.1, "multiplies": false},
		},
		"name": "Explosive",
		"cost": 75,
		"upgrade_cost": 55,
		"max_level": 3,
		"scene": "res://Scenes/turrets/meleeTurret/meleeTurret.tscn",
		"sprite": "res://Assets/turrets/Builder.png",
		"scale": 1.0,
		"rotates": true,
	},
}

const stats := {
	"damage": {"name": "Damage"},
	"attack_speed": {"name": "Speed"},
	"attack_range": {"name": "Range"},
	"bulletSpeed": {"name": "Bullet Speed"},
	"bulletPierce": {"name": "Bullet Pierce"},
	"ray_length": {"name": "Ray Length"},
	"ray_duration": {"name": "Ray Duration"},
	"slow_down": {"name": "Slow effect"},
}

const bullets := {
	"fire": {
		"frames": "res://Assets/bullets/bullet1.tres",
	},
	"laser": {
		"frames": "res://Assets/bullets/bullet2.tres",
	}
}

const enemies := {
	"Wasp": {
		"stats": {
			"hp": 2.0,
			"speed": 2,
			"baseDamage": 5.0,
			"goldYield": 1.0,
			},
		"difficulty": 1.0,
		"sprite": "res://Assets/enemies/Wasp.png",
	},
	"Hornet": {
		"stats": {
			"hp":15.0,
			"speed": 1,
			"baseDamage": 5.0,
			"goldYield": 1.0,
			},
		"difficulty": 2.0,
		"sprite": "res://Assets/enemies/Hornet.png",
	},
	"Scarab": {
		"stats": {
			"hp": 5.0,
			"speed": 5.0,
			"baseDamage": 1.0,
			"goldYield": 5.0,
			},
		"difficulty": 2.0,
		"sprite": "res://Assets/enemies/Scarab.png",
	},
	"Spider": {
		"stats": {
			"hp": 100.0,
			"speed": 0.5,
			"baseDamage": 10.0,
			"goldYield": 7.0,
			},
		"difficulty": 4.0,
		"sprite": "res://Assets/enemies/Centipede.png",
	}
}

const maps := {
	"map1": {
		"name": "Grass Map",
		"bg": "res://Assets/maps/map1.webp",
		"scene": "res://Scenes/maps/map1.tscn",
		"baseHp": 10,
		"startingGold": 100,
		"spawner_settings":
			{
			"difficulty": {"initial": 2.0, "increase": 1.5, "multiplies": true},
			"max_waves": 10,
			"wave_spawn_count": 10,
			"special_waves": {},
			},
	},
	"map2": {
		"name": "Barren World",
		"bg": "res://Assets/maps/map2.png",
		"scene": "res://Scenes/maps/map2.tscn",
		"baseHp": 15,
		"startingGold": 150,
		"spawner_settings":
			{
			"difficulty": {"initial": 1.0, "increase": 1.8, "multiplies": true},
			"max_waves": 15,
			"wave_spawn_count": 12,
			"special_waves": {},
			},
	}
}
