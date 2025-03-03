function enemy_flower_global() {
	if (enemy_state != ENEMYSTATE.MOVE || !follow_player) audio_stop_sound(snd_e_flower_move);
	distance_to_p = distance_to_object(obj_player);
	 direction_p = round(point_direction(x,y,obj_player.x, obj_player.y));
	if(direction_p <= 360 && direction_p >= 270) direction_p = 0;
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

	
	if (enemy_hp <= 0) {
		enemy_state = ENEMYSTATE.DEATH;
	}
	
	    show_debug_message(
		"dir: " + string(direction_p)
    );
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
	if (direction_p > 90) {
		image_xscale = -1;
    } else {
		image_xscale = 1;
    }
	
	
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
	if (direction_p > 90) {
		image_xscale = -1
    } else {
		image_xscale = 1;
    }
	
    if(!audio_is_playing(snd_e_flower_move)) audio_play_sound(snd_e_flower_move,0,0,0.7,0,random_range(0.5,1));
    sprite_index = spr_flower_move;
    x += image_xscale * walk_speed;
    image_speed = 1;
    if (attack_player) enemy_state = ENEMYSTATE.ATTACK;
}
    
function enemy_flower_attack() {
    if (!attack_initialized) {
        sprite_index = spr_flower_attack;
        image_index = 0; 
        image_speed = 1; 
        attack_initialized = true; 
        if (!audio_is_playing(snd_e_flower_attack_1)) audio_play_sound(snd_e_flower_attack_1,0,1,1,0,random_range(0.8,1));
    }

    if (!attack_player) {
        enemy_state = ENEMYSTATE.MOVE;
        if (audio_is_playing(snd_e_flower_attack_1)) audio_stop_sound(snd_e_flower_attack_1)
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
    audio_stop_sound(snd_e_flower_attack_1)
    audio_stop_sound(snd_e_flower_move)
        
	if (animation_end()) {
        
        instance_destroy();
    }
}