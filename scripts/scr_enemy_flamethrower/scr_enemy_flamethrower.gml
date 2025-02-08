function enemy_flamethrower_global() {
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
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
}

function enemy_flamethrower_idle() {
    sprite_index = spr_flamethrower_idle;
    if (follow_player) enemy_state = ENEMYSTATE.MOVE;
}

function enemy_flamethrower_movement() { 
    sprite_index = spr_flamethrower_move;
    x += image_xscale * walk_speed;
    image_speed = 1;
    
    if (enemy_state != ENEMYSTATE.ATTACK) {
        if (direction_p > 90) {
            direction = -1
            image_xscale = -1
            } else {
            direction = 1;
            image_xscale = 1;
            }
        }
    
    if (evade_player) enemy_state = ENEMYSTATE.EVADE;
    if (attack_player) enemy_state = ENEMYSTATE.ATTACK;
    if (!follow_player) enemy_state = ENEMYSTATE.IDLE;
}

function enemy_flamethrower_evade() {
    sprite_index = spr_flamethrower_move;
    x -= image_xscale * walk_speed;
    image_speed = 1;
    
    if (attack_player) {
        enemy_state = ENEMYSTATE.ATTACK;
    }
    if (!evade_player) enemy_state = ENEMYSTATE.MOVE;
}

function enemy_flamethrower_attack() {
    if (!attack_initialized) {
        sprite_index = spr_flamethrower_attack;
        mask_index = spr_flamethrower_attack_hitbox;
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
    if(num > 0){
        with(obj_player) {
            if (!invincible) { // Only take damage if not invincible
                global.player_health -= 100;
                invincibility_timer = 60; // Set invincibility period
                invincible = true; // Make the player invincible
                screenshake(10,20);
            }
        }
        
    } 
        ds_list_destroy(list);
        mask_index = spr_flamethrower_idle;
        

    if (animation_end()){
        attack_initialized = false;
        enemy_state = ENEMYSTATE.MOVE;
    }
}

function enemy_flamethrower_death() {
    is_dying = true
    sprite_index = spr_flamethrower_death;
    
    if (animation_end()) {
        instance_destroy();
    }
}
