if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_bot_idle(); break;
        case ENEMYSTATE.EVADE: enemy_bot_evade(); break;
		case ENEMYSTATE.ALERT: enemy_bot_alerted(); break
        case ENEMYSTATE.DEATH: enemy_bot_death(); break;
        case ENEMYSTATE.MOVE: enemy_bot_movement(); break;
        case ENEMYSTATE.ATTACK: enemy_bot_shoot(); break;
		case ENEMYSTATE.DASH: enemy_bot_dash(); break
    }
}


on_ground = place_meeting(x,y+1,collision_map);

show_debug_message("Distance BOT ---> Player = " + string(distance_to_p))

show_debug_message("BOT State = " + string(enemy_state))

show_debug_message("can_dash = " + string(dash_player))

if(found_player) {
    show_debug_message("BOT: Found player")
}

if(follow_player) {
    show_debug_message("BOT: Follow player")
}

if(shoot_player) {
    show_debug_message("BOT: Shooting player")
}

if(dash_player) {
    show_debug_message("BOT: Dashing player")
}
enemy_bot_global();
collision();
