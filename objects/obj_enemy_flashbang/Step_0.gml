if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_flashbang_idle(); break;
        case ENEMYSTATE.ALERT: enemy_flashbang_alerted(); break;
        case ENEMYSTATE.DEATH: enemy_flashbang_death(); break;
		case ENEMYSTATE.MOVE: enemy_flashbang_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_flashbang_attack(); break; 
            }
}

on_ground = place_meeting(x,y,collision_map);

if (hitflash) {
    if (hitflash_countdown <= 0) {
        hitflash = false;
    } else {
        hitflash_countdown--;
    }
} else {
	hitflash_countdown = 5
}

enemy_flashbang_global();
collision();
