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
    if (distance_to_p < shoot_distance) {
        shoot_player = true;
    } else { 
        shoot_player = false;
    }
    
    if (distance_to_p < dash_distance) {
        dash_player = true;
    } else {
        dash_player = false;
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
    
    if (shoot_timer > 0) shoot_timer--;
        
    if (shoot_timer <= 0) {
        can_shoot = true;
    } else {
        can_shoot = false;
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
    if (dash_player && !shoot_player) enemy_state = ENEMYSTATE.DASH
    if (!found_player && !follow_player) enemy_state = ENEMYSTATE.IDLE;
}

function enemy_bot_movement() { 
    sprite_index = spr_bot_move;
    x += image_xscale * walk_speed;
    image_speed = 1;
    
    if (shoot_player && can_shoot) enemy_state = ENEMYSTATE.ATTACK;
    if (!follow_player) enemy_state = ENEMYSTATE.ALERT;
}

function enemy_bot_evade() {
    sprite_index = spr_bot_move;
    x -= image_xscale * walk_speed;
    image_speed = 1;
    
    if (distance_to_p > follow_distance) {
        enemy_state = ENEMYSTATE.MOVE
    }
    
    //if (dash_player) {
        //enemy_state = ENEMYSTATE.DASH
    //}
}

function enemy_bot_shoot() {
    if (!attack_initialized) {
        show_debug_message("Normal attack initialized")
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
    

    if (animation_end()) {
        image_index = 0
        mask_index = spr_bot_idle;
        attack_initialized = false;
        shoot_timer = shoot_cooldown;
        enemy_state = ENEMYSTATE.EVADE;
    }
}

function enemy_bot_dash() {
    if (!dash_initialized) {
        show_debug_message("Fire dash attack initialized")
        if (distance_to_p > dash_distance && !dash_player) {
            if (direction_p > 90) {
                direction = -1
                image_xscale = -1
            } else {
                direction = 1;
                image_xscale = 1;
            }
            
            sprite_index = spr_bot_fire_dash;
            image_index = 0;
            image_speed = 1;
            mask_index = spr_bot_fire_dash_hitbox;
            dash_player = true;
        }
        
        dash_initialized = false;
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
    
    
    if(animation_end()) {
        enemy_state = ENEMYSTATE.IDLE
        dash_player = false;
    }
}


function enemy_bot_death() {
    is_dying = true
    sprite_index = spr_bot_death;
    
    if (animation_end()) {
        instance_destroy();
    }
}
