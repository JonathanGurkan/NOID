function enemy_bot_global() {
	collision();
    distance_to_p = distance_to_object(obj_player);
    direction_p = round(point_direction(x,y,obj_player.x, obj_player.y));
    if(direction_p <= 360 && direction_p >= 270) direction_p = 0
    dist_to_wall = distance_to_object(obj_wall);
    //wakeup
    if (distance_to_p < found_distance) {
        found_player = true;
    } else { 
        found_player = false;
    }
    
    //follow
    if (distance_to_p < follow_distance || uncondidtional_follow) {
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
    
    if (enemy_hp <= 0) {
        enemy_state = ENEMYSTATE.DEATH;
    }
    
    if (shoot_timer > 0) shoot_timer--;
        
    if (shoot_timer <= 0) {
        can_shoot = true;
    } else {
        can_shoot = false;
    }
    
    if (dash_timer > 0) dash_timer--;
            
        if (dash_timer <= 0) {
            can_dash = true;
        } else {
            can_dash = false;
        }
}

function enemy_bot_idle() {
    sprite_index = spr_bot_idle;
    move_x = 0
    if (found_player) enemy_state = ENEMYSTATE.ALERT;
}

function enemy_bot_alerted() {
    move_x = 0;
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
    move_x = 1 * walk_speed * image_xscale; 
    image_speed = 1;
 // Only update when not locked
    if (direction_p > 90) {
        image_xscale = -1;
    } else {
        image_xscale = 1;
    }
    if (shoot_player && can_shoot) enemy_state = ENEMYSTATE.ATTACK;
    if (!follow_player) enemy_state = ENEMYSTATE.ALERT;
    if (can_dash && dash_player) enemy_state = ENEMYSTATE.DASH; 
}



function enemy_bot_shoot() {
    move_x = 0;
    if (!attack_initialized) {
        sprite_index = spr_bot_shoot;
        mask_index = spr_bot_shoot_hitbox;
        if (direction_p > 90) {
            image_xscale = -1
        } else {
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
                screenshake(10, 1, 0.3);
            }
        }
    } 
    ds_list_destroy(list);
    if (animation_end()) {
        image_index = 0
        mask_index = spr_bot_idle;
        attack_initialized = false;
        shoot_timer = shoot_cooldown;
        enemy_state = ENEMYSTATE.MOVE;
    }
}





//dist_to_wall < 80
//image_xscale  = x_scale
//obj_player.dist_to_wall < dist_to_wall 


function enemy_bot_dash() {
    sprite_index = spr_bot_fire_dash;
    mask_index = spr_bot_fire_dash_hitbox;      
    image_speed = 1;
    dash_player = true;
    move_x = 0;
    
    if (!dash_initialized) {
        image_index = 0;
        dash_initialized = true;
        if(obj_player.dist_to_wall < dist_to_wall && dist_to_wall < 80){
           if (direction_p > 90) {
               image_xscale = 1
           } else {
               image_xscale = -1;
           } 
        } else {
            if (direction_p > 90 ) {
               image_xscale = -1
           } else {
               image_xscale = 1;
           } 
        }
    }   
         
    var list = ds_list_create();
    var num = instance_place_list(x,y,obj_player,list,false);
    if (num > 0) {
        with (obj_player) {
            if (!invincible) { // Only take damage if not invincible
                global.player_health -= 2;
                invincibility_timer = 60; // Set invincibility period
                invincible = true; // Make the player invincible
                screenshake(10, 1, 0.3);
            }
        }
    } 
    ds_list_destroy(list);
    

    if(animation_end()) {
        x += image_xscale * 70;  
        dash_timer = dash_cooldown;
        mask_index = spr_bot_idle;
        dash_player = false;
        dash_initialized = false;
        enemy_state = ENEMYSTATE.MOVE;
    }
       
}





function enemy_bot_death() {
    
    move_x = 0;
    is_dying = true
    sprite_index = spr_bot_death;
    
    if (animation_end()) {
        instance_destroy();
        global.player_score += 10;
    }
}
