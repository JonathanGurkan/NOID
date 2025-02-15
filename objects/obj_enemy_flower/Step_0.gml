if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_flower_idle(); break;
        case ENEMYSTATE.ALERT: enemy_flower_alerted(); break;
        case ENEMYSTATE.DEATH: enemy_flower_death(); break;
        case ENEMYSTATE.MOVE: enemy_flower_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_flower_attack(); break;
        case ENEMYSTATE.FALL: enemy_flower_fall(); break;
        
    }
}

on_ground = place_meeting(x,y,collision_map);

enemy_flower_global();

if (was_activated) collision();