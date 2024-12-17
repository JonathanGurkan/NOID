if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_idle(spr_flower_idle); break;
        case ENEMYSTATE.WAKEUP: enemy_awaken(spr_flower_acitvate); break;
        case ENEMYSTATE.DEATH: enemy_death(spr_flower_death,false); break;
		case ENEMYSTATE.WALK: enemy_movement(spr_flower_r); break;
        case ENEMYSTATE.ATTACK: enemy_attack(spr_flower_attack,spr_flower_attack_hitbox); break;
    }
}


on_ground = place_meeting(x,y+1,collision_map);

enemy_logic();
collision();