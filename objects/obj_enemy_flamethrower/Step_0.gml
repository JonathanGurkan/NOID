if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_flamethrower_idle(); break;
        case ENEMYSTATE.DEATH: enemy_flamethrower_death(); break;
        case ENEMYSTATE.MOVE: enemy_flamethrower_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_flamethrower_attack(); break;
    }
}


on_ground = place_meeting(x,y,collision_map);

if (hitflash) {
	hitflash_countdown = hitflash_timer
	hitflash_countdown--
	
	if (hitflash_countdown = 0) {
		hitflash = false;
	}
}

enemy_flamethrower_global();
collision();
