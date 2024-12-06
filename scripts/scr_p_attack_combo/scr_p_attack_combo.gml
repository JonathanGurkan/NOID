function scr_p_attack_combo() {
    process_attack(spr_player_a_2,spr_player_a_2_hitbox)
        
    if(key_sword) && (image_index > 2) {
        state = PLAYERSTATE.ATTACK;
        return;
    }
        
    if (animation_end()) {
        sprite_index = spr_player;
        state = PLAYERSTATE.FREE;
        can_attack = true;
    }
}

