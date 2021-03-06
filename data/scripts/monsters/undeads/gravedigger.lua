local mType = Game.createMonsterType("Gravedigger")
local monster = {}

monster.description = "a gravedigger"
monster.experience = 950
monster.outfit = {
	lookType = 558,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1500
monster.maxHealth = 1500
monster.race = "blood"
monster.corpse = 21279
monster.speed = 240
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 200,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "High Five!", yell = false},
	{text = "scrabble", yell = false},
	{text = "Put it there!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 100000, maxCount = 137},
	{id = "platinum coin", chance = 24470},
	{id = "yellow gem", chance = 800},
	{id = "wand of inferno", chance = 5590},
	{id = "sudden death rune", chance = 7300},
	{id = "skull staff", chance = 130},
	{id = "mysterious voodoo skull", chance = 100},
	{id = 6300, chance = 800},
	{id = "strong health potion", chance = 2260, maxCount = 2},
	{id = "strong mana potion", chance = 3600, maxCount = 2},
	{id = "unholy bone", chance = 9570},
	{id = "pile of grave earth", chance = 6650},
	{id = "safety pin", chance = 6000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -320, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, startDamage = 180, interval = 4000}},
	{name ="combat", interval = 2000, chance = 10, minDamage = -40, maxDamage = -250, type = COMBAT_MANADRAIN, range = 1, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -175, maxDamage = -300, type = COMBAT_DEATHDAMAGE, range = 1, shootEffect = CONST_ANI_DEATH, target = false},
	{name ="drunk", interval = 2000, chance = 10, effect = CONST_ME_SMALLCLOUDS, target = false}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="invisible", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 20, minDamage = 100, maxDamage = 250, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 420, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
