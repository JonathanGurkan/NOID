if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_flamethrower_idle(); break;
        case ENEMYSTATE.DEATH: enemy_flamethrower_death(); break;
        case ENEMYSTATE.MOVE: enemy_flamethrower_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_flamethrower_attack(); break;
        case ENEMYSTATE.EVADE: enemy_flamethrower_evade(); break
    }
}


on_ground = place_meeting(x,y+1,collision_map);

enemy_flamethrower_global();
collision();

show_debug_message(string(enemy_state) + "  " + string(follow_player));