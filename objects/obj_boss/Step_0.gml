

if(obj_swordfighter.radius >= 400){
with(obj_orbmage) visible = false;
with(obj_shocksweeper) visible = false;
with(obj_swordfighter) visible = false;
} else {
with(obj_orbmage) visible = true;
with(obj_shocksweeper) visible = true;
with(obj_swordfighter) visible = true;
}

if(bossfight_started && can_attack) {
	
if(!init){
	global.bossinit = false;
	init = true;
	var time_before_attackswitch = round(random_range(20,40));
	if (timer_before_attackswitch <= 0) timer_before_attackswitch = time_before_attackswitch;
	repeat(10) {
    var index = irandom(array_length(attack_array) - 1);
    if (attack_array[index] != -1) {
        random_pick = attack_array[index];
        break;
		 }
	}
}


if (timer_before_attackswitch >= 0) timer_before_attackswitch--;

show_debug_message(string(attack_array) + "  " + string(random_pick));
if(timer_before_attackswitch <= 0){
if (random_pick = -1) {
	can_attack = true;
	init = false;
}
if (random_pick = 1)	boss_state = BOSSSTATE.SLAM_ATTACK;
if (random_pick = 2)	boss_state = BOSSSTATE.SWORD_ATTACK;
if (random_pick = 3)	boss_state = BOSSSTATE.SWEEP_ATTACK;
if (random_pick = 4)	boss_state = BOSSSTATE.LAZER_ATTACK;
}
}

if (!global.gamepaused) {
    switch (boss_state) {
		case BOSSSTATE.IDLE: break;
		case BOSSSTATE.SWORD_ATTACK: with(obj_swordfighter) scr_boss_sword_attack(); break;
		case BOSSSTATE.SLAM_ATTACK: with(obj_shocksweeper) scr_boss_slam_attack(); break;
		case BOSSSTATE.SWEEP_ATTACK: with(obj_orbmage) scr_boss_sweep_attack(); break;
		case BOSSSTATE.LAZER_ATTACK: with(obj_orbmage) scr_boss_lazer_attack(); break;
    }
}

if(place_meeting(x,y,obj_player) && !bossfight_started){
boss_state = BOSSSTATE.CUTSCENE;
with(obj_player) state = scr_p_transition();
}

if(keyboard_check(vk_f2)) boss_over = true;

if(boss_over){
	with(obj_player){
	state = scr_p_transition();
	move_x = 0;
	} 
	global.player_score += 2;
	view_h -= 1.5 * 0.5625;
	view_w -= 1.5;
	obj_camera.y = obj_player.y -12;
	camera_set_view_size(cam,view_w,view_h);
} 


if(view_w <= 0) room_goto(r_end_end);