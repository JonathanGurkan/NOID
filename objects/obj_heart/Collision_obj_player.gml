if (global.player_health < 90) {
	global.player_health += 10;
} else {
	global.player_health = 100
}

instance_destroy()