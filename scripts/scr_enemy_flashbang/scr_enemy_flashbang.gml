function enemy_flashbang_global() {
    if (enemy_state != ENEMYSTATE.MOVE) audio_stop_sound(snd_e_flashbang_walk)
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
	if(direction_p <= 360 && direction_p >= 270) direction_p = 0
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

function enemy_flashbang_idle() {
    sprite_index = spr_flashbang_idle;
    
    if (found_player) enemy_state = ENEMYSTATE.ALERT;
}

function enemy_flashbang_alerted() {
    sprite_index = spr_flashbang_alert;
    
    if (follow_player) enemy_state = ENEMYSTATE.MOVE;
    if (!found_player && !follow_player) enemy_state = ENEMYSTATE.IDLE;
}

function enemy_flashbang_movement() {
    if(!audio_is_playing(snd_e_flashbang_walk)) audio_play_sound(snd_e_flashbang_walk,0,0,0.7,0,random_range(0.5,1)); 
    sprite_index = spr_flashbang_move;
    x += image_xscale * walk_speed;
    image_speed = 1;
    
    if (evade_player) enemy_state = ENEMYSTATE.EVADE; 
    if (attack_player) enemy_state = ENEMYSTATE.ATTACK;
    if (!follow_player) enemy_state = ENEMYSTATE.ALERT;
}

function enemy_flashbang_evade() {
    sprite_index = spr_flashbang_move;
    x -= image_xscale * walk_speed;
    image_speed = 1;
    
    
    if (attack_player) {
        enemy_state = ENEMYSTATE.ATTACK;
    }
        if (!evade_player) enemy_state = ENEMYSTATE.MOVE;
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

    if (animation_end()) {
        enemy_state = ENEMYSTATE.DEATH;
		with (obj_screenflash) {
			flash_trigger = true;
            flash_length = 240;
            if(!audio_is_playing(snd_e_flashbang)) audio_play_sound(snd_e_flashbang,0,0,0.7,0,1);
		}
    }
} 

function enemy_flashbang_death() {
    is_dying = true
    image_speed = 1;
    sprite_index = spr_flashbang_death;
    audio_stop_sound(snd_e_flashbang_walk)
    
    if (animation_end()) {
        global.player_score += 10;
        instance_destroy();
    }
}