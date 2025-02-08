function enemy_flower_global() {
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

//player too close
if (distance_to_p < evade_distance && !attack_player) {
        evade_player = true;
}
if (distance_to_p > 50) {
        evade_player = false;
}

//attack range
if (distance_to_p < attack_distance) {
        attack_player = true;
    } else { 
        attack_player = false;
    }

    
if (enemy_hp <= 0) {
    enemy_state = ENEMYSTATE.DEATH;
}


if (direction_p > 90) {
    direction = -1
    image_xscale = -1
    } else {
    direction = 1;
    image_xscale = 1;
    }
}

function enemy_flower_idle() {
    sprite_index = spr_flower_idle;
    
    if (!was_activated) {
        image_yscale = -1;
        if (found_player) enemy_state = ENEMYSTATE.ALERT;
    } else {
        image_yscale = 1;
        if (found_player) enemy_state = ENEMYSTATE.MOVE;
    }
}

function enemy_flower_alerted() {
    sprite_index = spr_flower_alert;
    image_yscale = 1;
    image_speed = 1;
    if (animation_end()) {
        image_speed = 0;
    }
    
    if (follow_player) enemy_state = ENEMYSTATE.FALL;
    if (!found_player) enemy_state = ENEMYSTATE.IDLE;
}

function enemy_flower_fall() {
        if (!was_activated) {
        image_speed = 1;
        was_activated = true;
        sprite_index = spr_flower_fall;
        if (animation_end()) image_speed = 0;
        }
        
    if (on_ground && was_activated) {
        image_speed = 1;
        sprite_index = spr_flower_land;
        if (animation_end()) enemy_state = ENEMYSTATE.MOVE;
    }
}

function enemy_flower_movement() { 
    sprite_index = spr_flower_move;
    x += image_xscale * walk_speed;
    image_speed = 1;
    
    if (evade_player) enemy_state = ENEMYSTATE.EVADE; 
    if (attack_player) enemy_state = ENEMYSTATE.ATTACK;
}

function enemy_flower_evade() {
    sprite_index = spr_flower_move;
    x -= image_xscale * walk_speed;
    image_speed = 1;
    
    
    if (attack_player) {
        enemy_state = ENEMYSTATE.ATTACK;
    }
        if (!evade_player) enemy_state = ENEMYSTATE.MOVE;
}
    
function enemy_flower_attack() {
    if (!attack_initialized) {
        sprite_index = spr_flower_attack;
        image_index = 0; 
        image_speed = 1; 
        attack_initialized = true; 
    }

    if (!attack_player) {
        enemy_state = ENEMYSTATE.MOVE;
        attack_initialized = false; 
    }

    var list = ds_list_create();
    var num = instance_place_list(x, y, obj_player, list, false);
    if (num > 0) { 
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
} 

function enemy_flower_death() {
    is_dying = true
        sprite_index = spr_flower_death;
        
        if (animation_end()) {
            instance_destroy();
        }
}