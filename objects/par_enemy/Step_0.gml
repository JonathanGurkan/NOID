if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_idle(); break;
        case ENEMYSTATE.ALERT: enemy_alerted(); break;
        case ENEMYSTATE.DEATH: enemy_death(); break;
        case ENEMYSTATE.MOVE: enemy_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_attack(); break;
    }
}


on_ground = place_meeting(x,y+1,collision_map);

enemy_logic();
collision();
