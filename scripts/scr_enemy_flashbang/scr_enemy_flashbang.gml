function enemy_flashbang_global(){
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
    //wakeup
    if (distance_to_p < found_distance){
        found_player = true;
        } else { 
        found_player = false;
        }
    
    //follow
    if (distance_to_p < follow_distance){
            follow_player = true;
        } else { 
            follow_player = false;
        }
    
    //player too close
    if (distance_to_p < evade_distance && !attack_player){
            evade_player = true;
        }
    if (distance_to_p > 50){
            evade_player = false;
        }
    
    //attack range
    if (distance_to_p < attack_distance){
            attack_player = true;
        } else { 
            attack_player = false;
        }
    
    if (direction_p > 90) {
        direction = -1
        image_xscale = -1
        } else {
        direction = 1;
        image_xscale = 1;
        }
    
    if(enemy_hp <= 0){
        enemy_state = ENEMYSTATE.DEATH;
    }

}

function enemy_flashbang_idle(){
    sprite_index = spr_flashbang_idle;
    
    if(found_player) enemy_state = ENEMYSTATE.ALERT;
}

function enemy_flashbang_alerted(){
    sprite_index = spr_flashbang_alert;
    
    if(follow_player) enemy_state = ENEMYSTATE.MOVE;
    if(!found_player && !follow_player) enemy_state = ENEMYSTATE.IDLE;
}

function enemy_flashbang_movement(){ 
    sprite_index = spr_flashbang_move;
    x += image_xscale * walk_speed;
    image_speed = 1;
    
    if(evade_player) enemy_state = ENEMYSTATE.EVADE; 
    if(attack_player) enemy_state = ENEMYSTATE.ATTACK;
    if(!follow_player) enemy_state = ENEMYSTATE.ALERT;
}

function enemy_flashbang_evade(){
    sprite_index = spr_flashbang_move;
    x -= image_xscale * walk_speed;
    image_speed = 1;
    
    
    if(attack_player){
        enemy_state = ENEMYSTATE.ATTACK;
    }
        if(!evade_player) enemy_state = ENEMYSTATE.MOVE;
}
    
function enemy_flashbang_attack() {
    if (!attack_initialized) {
        sprite_index = spr_flashbang_attack;
        image_index = 0; 
        image_speed = 1; 
        mask_index = spr_flashbang_attack_hitbox;
        attack_initialized = true; 
    }

    if (image_index < 5 && !attack_player) {
        enemy_state = ENEMYSTATE.MOVE;
        attack_initialized = false; 
        mask_index = spr_flashbang_idle;
    }

    var list = ds_list_create();
    var num = instance_place_list(x, y, obj_player, list, false);
    if (num > 0) {
        show_debug_message("flash");
    }
    ds_list_destroy(list);

    if (animation_end()) {
        enemy_state = ENEMYSTATE.DEATH;
    }
} 

function enemy_flashbang_death(){
    is_diying = true
    image_speed = -1;
    sprite_index = spr_flower_alert;
    
    if(animation_end()){
        instance_destroy();
    }
}