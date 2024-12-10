if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_idle(); break;
        case ENEMYSTATE.WAKEUP: enemy_awaken(); break;
        case ENEMYSTATE.DEATH: enemy_death(); break;
        case ENEMYSTATE.WALK: enemy_movement(); break;    
        case ENEMYSTATE.ATTACK: enemy_attack(); break;
    }
}


enemy_logic();
enemy_movement();
collision();
    show_debug_message(string(distance_to_p))
	
	if(enemy_hp <= 0) enemy_state = ENEMYSTATE.DEATH;