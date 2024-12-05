event_inherited();

if(!global.gamepaused) {
    switch (state){
        case ENEMYSTATE.CHASE:  scr_e_chase(); break;
        case ENEMYSTATE.ATTACK:  scr_e_attack(); break;
        case ENEMYSTATE.DIE:  scr_e_die(); break;
        case ENEMYSTATE.HURT: scr_e_hurt(1); break;
        case ENEMYSTATE.WAIT:  scr_e_wait(); break;
        case ENEMYSTATE.WANDER: scr_e_wander(); break;
    }
        }