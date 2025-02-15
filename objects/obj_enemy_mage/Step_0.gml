if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_mage_idle(); break;
        case ENEMYSTATE.DEATH: enemy_mage_death(); break;
        case ENEMYSTATE.MOVE: enemy_mage_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_mage_attack(); break;
        case ENEMYSTATE.SHOOT: enemy_mage_shoot(); break;
        case ENEMYSTATE.EVADE: enemy_mage_evade(); break;
        case ENEMYSTATE.DODGE: enemy_mage_dodge(); break;
    }
}
on_ground = place_meeting(x,y,collision_map);



enemy_mage_global();
collision();
