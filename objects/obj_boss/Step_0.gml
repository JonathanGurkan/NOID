if (!global.gamepaused) {
    switch (boss_state) {
        case BOSSSTATE.IDLE: scr_boss_idle(); break;
		case BOSSSTATE.SWORD_ATTACK: with(obj_swordfighter) scr_boss_sword_attack(); break;
    }
}

if (keyboard_check(ord("P"))) boss_state = BOSSSTATE.SWORD_ATTACK;