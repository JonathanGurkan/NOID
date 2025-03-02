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

if (instance_exists(obj_player) && (position_meeting(obj_player.x,obj_player.y,id) && teleports)) {
	global.target_room = target_room; 
	global.target_x = target_x;
	global.target_y = target_y;
    global.target_direction = obj_player.direction;
    with (obj_player) state = scr_p_transition;
    room_transition(TRANS_TYPE.FAST_FADE, target_room)
}