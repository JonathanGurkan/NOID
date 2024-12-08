if (!global.gamepaused) {
    switch (enemy_state) {
        case ENEMYSTATE.IDLE: enemy_idle(); break;
        case ENEMYSTATE.WAKEUP: enemy_awaken(); break;
        case ENEMYSTATE.DEATH: enemy_death(); break;
    }
}


enemy_logic();
enemy_movement();
collision();
    show_debug_message(string(enemy_state))