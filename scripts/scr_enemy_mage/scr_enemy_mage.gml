function enemy_mage_global() {
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
    direction_p = round(point_direction(x,y,obj_player.x, obj_player.y));
    if(direction_p <= 360 && direction_p >= 270) direction_p = 0;
    dist_to_wall = distance_to_object(obj_wall);
    //follow
    if (distance_to_p < follow_distance  || unconditional_follow) {
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
    
    if (distance_to_p < shoot_distance) {
            shoot_player = true;
        } else {
            shoot_player = false;
        }
    
    if (distance_to_p < evade_distance && !unconditional_follow) {
            evade_player = true;
        } else {
            evade_player = false
        }
    
    if (shoot_timer > 0) shoot_timer--;
    if (shoot_timer <= 0) {
        can_shoot = true;
    } else {
        can_shoot = false;
    }
    
    if (dash_timer > 0) dash_timer--;
    
    if (enemy_hp <= 0) {
        enemy_state = ENEMYSTATE.DEATH;
    }
    
    if(distance_to_object(obj_wall) <= 5) {
        unconditional_follow = true; enemy_state = ENEMYSTATE.MOVE;
    }
}

function enemy_mage_idle() {
    move_x = 0;
    sprite_index = spr_mage_idle;
    last_state = ENEMYSTATE.IDLE;
    if (follow_player) enemy_state = ENEMYSTATE.MOVE;
}

function enemy_mage_movement() { 
    sprite_index = spr_mage_move;
    move_x = 1 * image_xscale * walk_speed;
    image_speed = 1;
       
    if (direction_p > 90) {
    image_xscale = -1
    } else {
    image_xscale = 1;
    }
    if (evade_player) enemy_state = ENEMYSTATE.EVADE;
    if (attack_player && !shoot_player && !can_shoot) || (unconditional_follow && attack_player) enemy_state = ENEMYSTATE.ATTACK;
    if (shoot_player && can_shoot) enemy_state = ENEMYSTATE.SHOOT; 
    if (!follow_player) enemy_state = ENEMYSTATE.IDLE;
}

function enemy_mage_shoot() {
    move_x = 0;
if (!attack_initialized) {
    image_speed = 1;
    image_index = 0;
    last_state = ENEMYSTATE.SHOOT;
        sprite_index = spr_mage_shoot;
        mask_index = spr_mage_shoot_hitbox;
        if (direction_p > 90) {
                direction = -1;
                image_xscale = -1;
                } else {
                direction = 1;
                image_xscale = 1;
                }
        attack_initialized = true;
        } 
    var list = ds_list_create();
        var num = instance_place_list(x,y,obj_player,list,false)

        if(num > 0){
            with(obj_player){
                if (!invincible) { // Only take damage if not invincible
                        global.player_health -= 5;
                        invincibility_timer = 60; // Set invincibility period
                        invincible = true; // Make the player invincible
                        screenshake(5, 2.5, 0.3);
                    }
                    }
        } 
        ds_list_destroy(list);
        
    if (animation_end()) { 
        mask_index = spr_flamethrower_idle;
        attack_initialized = false;
        shoot_timer = shoot_cooldown;
        enemy_state = ENEMYSTATE.EVADE;
    }
}

function enemy_mage_attack() {
        move_x = 0; 
        image_speed = 1;
        sprite_index = spr_mage_attack;
        mask_index = spr_mage_attack_hitbox;
        last_state = ENEMYSTATE.ATTACK;
    var list = ds_list_create();
        var num = instance_place_list(x,y,obj_player,list,false)
        if(num > 0){
            with(obj_player){
                if (!invincible) { // Only take damage if not invincible
                        global.player_health -= 2;
                        invincibility_timer = 60; // Set invincibility period
                        invincible = true; // Make the player invincible
                        screenshake(10, 1, 0.3);
                    }
                    }
        } 
        ds_list_destroy(list);
        mask_index = spr_mage_idle;
    if (animation_end()) {
        dash_timer = dash_cooldown;
        enemy_state = ENEMYSTATE.DODGE;
        unconditional_follow = false;
    }
}

function enemy_mage_evade() {
        move_x = 0;
        sprite_index = spr_mage_move;
        move_x = 1 * image_xscale * walk_speed;
        image_speed = 1;
    
        if (direction_p > 90) {
                image_xscale = 1;
                } else {
                image_xscale = -1;
                }
    
    if (attack_player && !can_shoot && last_state != ENEMYSTATE.ATTACK) enemy_state = ENEMYSTATE.ATTACK;
    if (shoot_player && can_shoot) enemy_state = ENEMYSTATE.SHOOT;
    if (!evade_player && distance_to_p >= 100) {
        unconditional_follow = true;
        enemy_state = ENEMYSTATE.MOVE;
    }
}
    
function enemy_mage_dodge() {
    sprite_index = spr_mage_idle;
    image_speed = 0;
    with(instance_create_depth(x,y,depth+1,obj_trail)) {
            sprite_index = other.sprite_index;
            image_blend = c_white;
            image_alpha = 0.7;
            
        }
    if (dash_timer > 0) {
        move_x = lengthdir_x(3, -image_xscale); // Dash backward based on image_xscale
        move_y = 0; // No vertical movement during dash
    } else {
        // Reset movement and state after the dash
        move_x = 0;
        move_y = 0;
        enemy_state = ENEMYSTATE.EVADE; // Set to EVADE state after dash completes
    }
}


function enemy_mage_death() {
    move_x = 0;
    is_dying = true
    sprite_index = spr_mage_death;
    
    if (animation_end()) {
        global.player_score += 10;
        instance_destroy();
    }
}
