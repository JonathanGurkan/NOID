if(bossfight_started && can_attack) {
	
if(!init){
	global.bossinit = false;
	init = true;
	var time_before_attackswitch = round(random_range(10,30));
	if (timer_before_attackswitch <= 0) timer_before_attackswitch = time_before_attackswitch;
	what_attack = round(random_range(0,2));
}


if (timer_before_attackswitch >= 0) timer_before_attackswitch--;
show_debug_message(string(timer_before_attackswitch) + "  " + string(what_attack) + "  " + string(global.bossinit));

if(timer_before_attackswitch <= 0){
if (what_attack = 0) boss_state = BOSSSTATE.SLAM_ATTACK;
if (what_attack = 1)  boss_state = BOSSSTATE.SWORD_ATTACK;
if (what_attack = 2)  boss_state = BOSSSTATE.SWEEP_ATTACK;
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

if (keyboard_check(ord("P"))) boss_state = BOSSSTATE.SWORD_ATTACK;