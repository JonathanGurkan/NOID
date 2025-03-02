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
}


}



if (!global.gamepaused) {
    switch (boss_state) {
		case BOSSSTATE.IDLE: break;
		case BOSSSTATE.SWORD_ATTACK: with(obj_swordfighter) scr_boss_sword_attack(); break;
		case BOSSSTATE.SLAM_ATTACK: with(obj_shocksweeper) scr_boss_slam_attack(); break;
		case BOSSSTATE.SWEEP_ATTACK: with(obj_orbmage) scr_boss_sweep_attack(); break;
    }
}


if(keyboard_check(ord("E"))) bossfight_started = true;