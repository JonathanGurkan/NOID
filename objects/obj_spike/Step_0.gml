hit_timer--;

if (place_meeting(x, y, obj_player) && can_hit) {
	global.player_health -= damage;
	can_hit = false;
	hit_timer = 60;
	with (obj_player) {
		invincibility_timer = 60;
		invincible = true;
	}
}

if (hit_timer <= 0) {
	can_hit = true;
}