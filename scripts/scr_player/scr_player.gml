function do_nothing() {
//ye, just do nothing
}
	
function scr_p_global() {
    if (global.player_health <= 0 && on_ground) {
        state = PLAYERSTATE.DEATH;
    }
}

function scr_p_death() {
    sprite_index = spr_player_death;
    image_speed = 1;

    if(animation_end()) {
        global.player_is_alive = false;
        image_speed = 0;

    }
}
	
function scr_p_animation() {
	show_debug_message(on_wall)
	
    if (!audio_is_playing(snd_p_jump_fly) && move_y > 2) audio_play_sound(snd_p_jump_fly,0,1,0.5);   
	if (move_x == 0) {
	    sprite_index = spr_player_idle;
        audio_stop_sound(snd_p_walk_1)
	} else {
        if (!audio_is_playing(snd_p_walk_1)) audio_play_sound(snd_p_walk_1,0,1,0.4); 
        if (last_state = PLAYERSTATE.DASH && keyboard_check(vk_shift)) {
        image_speed = 1;
        sprite_index = spr_player_move_3;
        } else {
	    image_speed = 1;
	    sprite_index =  spr_player_move;
        }
	} 
	
	if (on_ground) {
        audio_stop_sound(snd_p_jump_fly);
    } else {
		
		if (move_y < 0) {
			audio_stop_sound(snd_p_walk_1)
			sprite_index = spr_player_up;
			}
		if (move_y > 0) {
			audio_stop_sound(snd_p_walk_1)
			sprite_index = spr_player_down;
			}
		if (on_wall != 0){
			sprite_index = spr_player_onwall;
			image_xscale = on_wall;
			dust++
				var side = bbox_left;
				if(on_wall == 1) side = bbox_right;
				if(dust>4 && move_y > 0) with (instance_create_layer(side,bbox_top+3,"enemy",obj_dustparticle)){
				other.dust = 0;
				hspeed = -other.on_wall * obj_player.move_y;
				}
		}
	}
	
	
	if(on_wall == 0){
		dust = 0;
		var angle = point_direction(x, y, mouse_x, mouse_y);
        
		// Constrain the angle between -90 and 90 degrees
		if (angle > 90 && angle < 270) {
		    image_xscale = -1;
		} else {
			    image_xscale = 1;
		}
	}
}

	
function scr_p_attack_1() {
    if (!audio_is_playing(snd_p_attack_1) && global.player_stamina > 10) audio_play_sound(snd_p_attack_1,0,0,0.2,0,random_range(0.5,1));
	  if (global.player_stamina > 0) {
	   process_attack(spr_player_attack_1,spr_player_attack_1_hitbox)
    }
    
	if (key_attack) && (image_index > 2) && (global.player_stamina > 0) {
       change_stamina(10);
	    state = PLAYERSTATE.ATTACK_2;
	    return;
	}
	
	
	if (animation_end()) {
    sprite_index = spr_player_idle;
		state = PLAYERSTATE.FREE;
		    can_attack = true;
	}
}

function scr_p_attack_2() {
    if (!audio_is_playing(snd_p_attack_2)) audio_play_sound(snd_p_attack_2,0,0,0.7,0,random_range(0.5,1));
	if (global.player_stamina > 0) {
	   process_attack(spr_player_attack_2,spr_player_attack_2_hitbox)
    }
        
  if (key_attack) && (image_index > 2) && (global.player_stamina > 0) {
	    change_stamina(10);
	    state = PLAYERSTATE.ATTACK_3;
	    return;
	}
	
	if (animation_end()) {
	    sprite_index = spr_player_idle;
	    state = PLAYERSTATE.FREE;
	    can_attack = true;
	}
}

function scr_p_attack_3() {
    if (!audio_is_playing(snd_p_attack_3)) audio_play_sound(snd_p_attack_3,0,0,0.7,0,random_range(0.5,1));
    process_attack(spr_player_attack_3,spr_player_attack_3_hitbox)
        
    if (key_attack) && (image_index > 2) && (global.player_stamina > 0) {
        change_stamina(10)
        state = PLAYERSTATE.ATTACK_1;
        return;
    }
        
    if (animation_end()) {
        sprite_index = spr_player_idle;
        state = PLAYERSTATE.FREE;
        can_attack = true;
    }
}    
	
function scr_p_attack_strong() {
	if (global.player_stamina > 0) { 
        process_attack(spr_player_attack_strong,spr_player_attack_strong_hitbox);
	}
	
	if (animation_end()) {
	    sprite_index = spr_player_idle;
	    state = PLAYERSTATE.FREE
	    can_attack = true;
	    obj_player.x += 64 * image_xscale;
	}
}
	
function scr_p_dash() { 
    collision();
    if (!audio_is_playing(snd_p_dash)) audio_play_sound(snd_p_dash,0,0,1,0,random_range(0.8,1));
	move_x = lengthdir_x(dash_speed,dash_direction)
	move_y = 0;
	with(instance_create_depth(x,y,depth+1,obj_trail)) {
        var angle = point_direction(x, y, mouse_x, mouse_y);
                if (angle > 90 && angle < 270) {
                        image_xscale = -1;
                    } else {
                        image_xscale = 1;
                    }
	    sprite_index = other.sprite_index;
	    image_blend = c_white;
	    image_alpha = 0.7;
	}
	dash_energy -= dash_speed
	if (!place_meeting(x,y+1,collision_map)) {
	    sprite_index = spr_player_dash;
	} else {
	    image_speed = 1
	    sprite_index = spr_player_dash;
	}
	if (dash_energy <= 0) {
	        move_x = 0;
	        move_y = 0;
	        can_dash  = true
	        state = PLAYERSTATE.FREE;
          last_state = PLAYERSTATE.DASH
          change_stamina(5)
	}
 
}
	
function scr_p_free() {
	on_ground = place_meeting(x,y+1,collision_map);
	//Movement x
	dir = key_right - key_left;
	move_x += dir * walk_acc;
	move_x = clamp(move_x,-move_x_max_final,move_x_max_final);
	var move_x_friction_final = fric_ground_speed;
	if (!on_ground) {
		move_x_friction_final = fric_air_speed;
	}
		
	if (dir == 0) {
	    move_x = lerp(move_x, 0, move_x_friction_final); 
	}
	
	wallclimb();
	//Movement y
	if (jump_buffer > 0) {
	    jump_buffer--;
	    if (key_jump) {
	        jump_buffer = 0;
	        move_y = jump_speed;
	    }
	}
   
	if (move_y < 0) && (!key_jump_held) {
	    move_y = max(move_y, -jump_speed/100);
	}
	move_x += move_x_frac;
	move_x_frac = frac(move_x)
	move_x -= move_x_frac;
    
	move_y+= move_y_frac;
	move_y_frac = frac(move_y)
	move_y -= move_y_frac;

	collision();
    
	if (on_ground) {
	    jump_buffer = 8;
	}
	
	//global.player_stamina logic
	if (stamina_can_regen && global.player_stamina < 100 && global.player_stamina >= 0) {
		global.player_stamina += 0.16;
	}
	
	if (global.player_stamina >= 100) global.player_stamina = 100;
	if (global.player_stamina <= 0) global.player_stamina = 0;
	
	if (key_attack || key_attack_strong || key_dash) {
        stamina_can_regen = false;
        if (global.player_stamina != 0) {
            stamina_timer = 60
        } else {
            stamina_timer = 30
        }
	}
    
    
    if (!stamina_can_regen && stamina_timer <= 120 && stamina_timer > 0) {
        --stamina_timer;
    }
	
	if (stamina_timer == 0) {
		stamina_can_regen = true;
	}
	
	//Key inputs
	if (dash_cooldown <= 0) {
	    can_dash = true
	} else {
	    can_dash = false;
	    --dash_cooldown;
	}
     
	if (can_dash && key_dash &&  move_x != 0 && global.player_stamina > 0) {
	    dash_cooldown = dash_duration;
	    can_dash = false;
	    dash_direction =  point_direction(0,0,key_right-key_left,0);
	    dash_speed = dash_distance / dash_time;
	    dash_energy = dash_distance;
	    state = PLAYERSTATE.DASH;
        last_state = PLAYERSTATE.FREE;
	}

    

    if (on_ground) {
      if (last_state = PLAYERSTATE.DASH && keyboard_check(vk_shift) && global.player_stamina > 0) {
        move_x_max_final = run_speed;
        stamina_can_regen = false;
        global.player_stamina -= 0.05;
      } else {
        move_x_max_final = walk_speed;
      }       
    }
    
	if (key_attack && on_ground && can_attack && global.player_stamina > 0) {
		change_stamina(10);
	    state = PLAYERSTATE.ATTACK_1
	    can_attack = false; 
	}
	
    if (invincibility_timer > 0) {
        invincibility_timer -= 1;
    
        // Toggle taking_damage flag for flashing effect
        if (invincibility_timer mod 10 < 5) {
            taking_damage = true;
        } else {
            taking_damage = false;
        }
    } else {
        taking_damage = false; // Stop flashing
        invincible = false; // End invincibility
    }
    
	if(global.player_health <= 0){
	sprite_index = spr_player_death;
	if(animation_end()){
	room_restart();
	}
	}
	scr_p_animation();
}
	
function process_attack(sprite, mask) {
	if (sprite_index != sprite) {
	        sprite_index = sprite;
	        image_index = 0;
	        ds_list_clear(hit_by_attack);
	    }
	    mask_index = mask;
	    var hit_by_attack_now = ds_list_create();
	    var hits = instance_place_list(x,y,par_enemy,hit_by_attack_now,false)
	    if (hits > 0) {
	        for (var i = 0; i < hits; i++) {

	            var hit_id = hit_by_attack_now[| i];
	            if (ds_list_find_index(hit_by_attack,hit_id) == -1) {
	                ds_list_add(hit_by_attack,hit_id);

	                with(hit_id){
                       audio_play_sound(snd_e_damage_1,0,0,1,0,random_range(0.5,1.5));
	                    --enemy_hp;
                     
	                }
	            }
	        }
	    }
	    ds_list_destroy(hit_by_attack_now);
	    mask_index = spr_player_idle;
}

	
function scr_p_transition() {
	scr_p_animation();
	collision();
}

function scr_p_teleport() { 
    global.target_room = target_room; 
    global.target_x = target_x;
    global.target_y = target_y;
    global.target_direction = obj_player.direction;
    with (obj_player) state = scr_p_transition;
    room_transition(TRANS_TYPE.FADE, target_room)
    instance_destroy(); 
}

    
function change_stamina(amount) {
	global.player_stamina -= amount;
}

function wallclimb() {
if (on_wall != 0) && (!on_ground) && (key_jump){
    walljump_delay = walljump_delay_max;
    move_x = -on_wall * wall_speed_x;
    move_y = wall_speed_y;
}
if (on_wall != 0) && (move_y > 0){
    move_y = grv_onwall;
}
}
