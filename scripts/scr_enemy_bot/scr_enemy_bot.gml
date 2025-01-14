function enemy_bot_global() {
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
    //wakeup
    if (distance_to_p < found_distance) {
        found_player = true;
        } else { 
        found_player = false;
        }
    
    //follow
    if (distance_to_p < follow_distance) {
            follow_player = true;
        } else { 
            follow_player = false;
        }
    
    //attack range
    if (distance_to_p < attack_distance) {
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
    
    if (enemy_hp <= 0) {
        enemy_state = ENEMYSTATE.DEATH;
    }

}

function enemy_bot_idle() {
    sprite_index = spr_bot_idle;
    
    
    if (found_player) enemy_state = ENEMYSTATE.ALERT;
}

function enemy_bot_alerted() {
    sprite_index = spr_bot_activate;
    image_speed = 1;
    if (animation_end()) {
        image_speed = 0;
    }
    
    if (follow_player) enemy_state = ENEMYSTATE.MOVE;
    if (!found_player && !follow_player) enemy_state = ENEMYSTATE.IDLE;
}

function enemy_bot_movement() { 
    sprite_index = spr_bot_move;
    x += image_xscale * walk_speed;
    image_speed = 1;
    
    if (attack_player) enemy_state = ENEMYSTATE.ATTACK;
    if (!follow_player) enemy_state = ENEMYSTATE.ALERT;
}

    
function enemy_bot_shoot() {
    if (!attack_initialized) {
        sprite_index = spr_bot_shoot;
        mask_index = spr_bot_shoot_hitbox;
        if (direction_p > 90) {
            direction = -1
            image_xscale = -1
        } else {
            direction = 1;
            image_xscale = 1;
        }
        
        attack_initialized = true;
        shoot_count += 1 
    } 
        
    var list = ds_list_create();
    var num = instance_place_list(x,y,obj_player,list,false)
    
    if (num > 0) {
        with (obj_player) {
            if (!invincible) { // Only take damage if not invincible
                global.player_health -= 2;
                invincibility_timer = 60; // Set invincibility period
                invincible = true; // Make the player invincible
                screenshake(10,20);
            }
        }
        show_debug_message(global.player_health);
    } 
    
    ds_list_destroy(list);
    mask_index = spr_bot_idle;
    

    if (animation_end()) {
        attack_initialized = false;
        enemy_state = ENEMYSTATE.MOVE;
    }
}

function enemy_bot_dash() {
    sprite_index = spr_bot_fire_dash
    image_index = 0
    image_speed = 1
    mask_index = spr_bot_fire_dash_hitbox
    
    if(animation_end()) {
        attack_count = 0
        enemy_state = ENEMYSTATE.MOVE
    }
}


function enemy_bot_death() {
    is_diying = true
    sprite_index = spr_bot_death;
    
    if (animation_end()) {
        instance_destroy();
    }
}