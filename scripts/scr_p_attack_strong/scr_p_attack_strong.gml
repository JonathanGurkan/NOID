function scr_p_attack_strong(){
    if(stamina > 0){
    process_attack(spr_player_a_strong,spr_player_a_strong_hitbox);
    }
    
    if (animation_end()) {
        sprite_index = spr_player;
        state = PLAYERSTATE.FREE
        can_attack = true;
        obj_player.x += 64;
    }
    
}