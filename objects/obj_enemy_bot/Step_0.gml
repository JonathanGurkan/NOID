if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_bot_idle(); break;
        case ENEMYSTATE.DEATH: enemy_bot_death(); break;
        case ENEMYSTATE.MOVE: enemy_bot_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_bot_attack(); break;
        case ENEMYSTATE.EVADE: enemy_bot_evade(); break
    }
}


on_ground = place_meeting(x,y+1,collision_map);

enemy_bot_global();
collision();
