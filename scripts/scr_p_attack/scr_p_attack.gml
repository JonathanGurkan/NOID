
function scr_p_attack(){
    
    process_attack(spr_player_a_1,spr_player_a_1_hitbox)
    
    if(key_sword) && (image_index > 2){
        
        state = PLAYERSTATE.ATTACK_COMBO
        return;
    }
  
    
    
if (animation_end()){
    
    sprite_index = spr_player_idle;
    state = PLAYERSTATE.FREE
     can_attack = true;
}
    
}