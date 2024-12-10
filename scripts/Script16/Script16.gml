// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_attack_strong(){

    process_attack(spr_player_a_strong,spr_player_a_strong_hitbox)
    
    if (animation_end()) {
        sprite_index = spr_player;
        state = PLAYERSTATE.FREE
        can_attack = true;
        x += image_xscale * 64;
    }
    
}