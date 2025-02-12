function enemy_flamethrower_global() {
    if(enemy_state != ENEMYSTATE.MOVE) audio_stop_sound(s_e_flamethrower_walk);
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
    if(!audio_is_playing(s_e_flamethrower_walk)) audio_play_sound(s_e_flamethrower_walk,0,0,0.7,0,random_range(0.5,1));
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
    if(!audio_is_playing(s_e_flamethrower_attack)) audio_play_sound(s_e_flamethrower_attack,0,0,1,0,random_range(0.8,1));
    sprite_index = spr_flamethrower_attack;
    mask_index = spr_flamethrower_attack_hitbox;
    if (!attack_initialized) {
        if (direction_p > 90) {
            direction = -1
            image_xscale = -1
        } else {
            direction = 1;
            image_xscale = 1;
        }
        
        attack_initialized = true;
    } 
		
    if (place_meeting(x, y, obj_player)) {
       with(obj_player) {
           if (!invincible) { // Only take damage if not invincible and is still touching the attack
               global.player_health -= 0.2;
               screenshake(60, 0.4, 0.3);
           }
       }
    }
        mask_index = spr_flamethrower_idle;
        

    if (animation_end()){
        audio_stop_sound(s_e_flamethrower_attack)
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
