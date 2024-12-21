// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_attack(attack_sprite, attack_mask, neutral_mask){
    sprite_index = attack_sprite;
    image_speed = 1;
    mask_index = attack_mask;
    
    var list = ds_list_create();
        var num = instance_place_list(x,y,obj_player,list,false)
        if(num > 0){
        show_debug_message("hit")
        enemy_attack_timer = attack_cooldown;
        } 
        ds_list_destroy(list)
        mask_index = neutral_mask;
        
        if(!attack_player){
            enemy_state = ENEMYSTATE.MOVE;
        }
}

function enemy_attack_flower() {
    // Check if the attack is being initialized
    if (!attack_initialized) {
        sprite_index = spr_flower_attack;
        image_index = 0; // Reset animation
        image_speed = 1; // Ensure animation plays
        mask_index = spr_flower_attack_hitbox;
        attack_initialized = true; // Mark the attack as initialized
    }

    // Conditional to return to move state early
    if (image_index < 5 && !attack_player) {
        enemy_state = ENEMYSTATE.MOVE;
        attack_initialized = false; // Reset initialization for next attack
    }

    // Handle collisions with player
    var list = ds_list_create();
    var num = instance_place_list(x, y, obj_player, list, false);
    if (num > 0) {
        show_debug_message("flash");
    }
    ds_list_destroy(list);

    // End the attack state when the animation finishes
    if (animation_end()) {
        enemy_state = ENEMYSTATE.DEATH;
    }
}
