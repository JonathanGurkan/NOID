function scr_p_global() {
    if (global.player_health <= 0 && on_ground) {
        state = PLAYERSTATE.DEATH;
    }
}

function scr_p_death() {
    sprite_index = spr_player_death;
    image_speed = 1;
	global.has_died = true;
    if(animation_end()) {
        global.player_is_alive = false;
        image_speed = 0;
    }
}
	
function scr_p_animation() {
	
    if (!audio_is_playing(snd_p_jump_fly) && move_y > 2) audio_play_sound(snd_p_jump_fly,0,1,0.5);   
	if (move_x == 0) {
	    sprite_index = spr_player_idle;
        audio_stop_sound(snd_p_walk_1)
	} else {
        if (!audio_is_playing(snd_p_walk_1)) audio_play_sound(snd_p_walk_1,0,1,0.4); 
	    image_speed = 1;
	    sprite_index =  spr_player_move;
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
			audio_stop_sound(snd_p_jump_fly);
			if (global.wallclimb = true){
				dust++
				var side = bbox_left;
				if(on_wall == 1) side = bbox_right;
				if(dust>4 && move_y > 0) with (instance_create_layer(side,bbox_top+3,"enemy",obj_dustparticle)){
				other.dust = 0;
				hspeed = -other.on_wall * obj_player.move_y;
				}
			}
		}
	}
	
	
	if(on_wall == 0) {
		dust = 0; 
		if (dir != 0) image_xscale = dir;
	}
}

function scr_p_attack_1() {
	collision()
	if(on_ground) move_x = 0;
    if (!audio_is_playing(snd_p_attack_1) && global.player_stamina > 0) audio_play_sound(snd_p_attack_1,0,0,0.2,0,random_range(0.5,1));
	  if (global.player_stamina > 0) {
	   process_attack(spr_player_attack_1,spr_player_attack_1_hitbox)
    }
    
	if (key_attack) && (image_index > 2) && (global.player_stamina > 5) {
		change_stamina(5);
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
	collision()
	if(on_ground) move_x = 0;
    if (!audio_is_playing(snd_p_attack_2)) audio_play_sound(snd_p_attack_2,0,0,0.7,0,random_range(0.5,1));
	if (global.player_stamina > 0) {
	   process_attack(spr_player_attack_2,spr_player_attack_2_hitbox);
    }
        
  if (key_attack) && (image_index > 2) && (global.player_stamina > 3) && (on_ground) {
	    change_stamina(3);
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
	collision()
	if(on_ground) move_x = 0;
    if (!audio_is_playing(snd_p_attack_3)) audio_play_sound(snd_p_attack_3,0,0,0.7,0,random_range(0.5,1));
    process_attack(spr_player_attack_3,spr_player_attack_3_hitbox)
        
    if (key_attack) && (image_index > 2) && (global.player_stamina > 3) && (on_ground) {
        change_stamina(3)
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
	collision()
	if (!audio_is_playing(snd_p_dash)) audio_play_sound(snd_p_dash,0,0,1,0,random_range(0.8,1));
	move_x = lengthdir_x(dash_speed,dash_direction)
	image_speed = 0
	sprite_index = spr_player_dash;
	dash_energy -= dash_speed
	if(global.airdash && !on_ground) move_y = 0;
	
	
	if(dash_energy >= 0){
		with(instance_create_depth(x,y,depth+1,obj_trail)) {
			image_xscale = other.image_xscale;
		    sprite_index = other.sprite_index;
		    image_blend = c_white;
		    image_alpha = 0.7;
		}
	} else 
		if(global.airdash && !on_ground){
			change_stamina(3);
			can_dash  = true;
			state = PLAYERSTATE.FREE;
			last_state = PLAYERSTATE.DASH;	
			
		} else {
		if (on_ground)image_speed = 1;
		move_x = 1 * image_xscale;
		
		if(animation_end()){
			change_stamina(3);
			can_dash  = true;
			state = PLAYERSTATE.FREE;
		}
 
	}	
	
}

function scr_p_teleport() {
	collision();
	can_dash = false;
	dash_held = 0;
	move_y = 0;
	if(teleport_out){
		if (on_ground) move_y = -1;
		move_x = 0;
		sprite_index = spr_player_teleport_in;
	if(image_index = 6){
		image_speed = 0
		teleport_out = false;
		teleport_time = 6;
		move_y = 0;
	}
	} else {
		if(teleport_time > 0){
		--teleport_time;
		move_x = 16 * image_xscale;
		}
		if(teleport_time <= 0 && !teleport_out){
		move_x = 0;
		if (on_ground) move_y = 1;
		image_speed = 1;
		sprite_index = spr_player_teleport_out;
		if(animation_end()){
			state = PLAYERSTATE.FREE
			can_dash  = true;
		}
		}
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
	
	if (global.wallclimb = true) wallclimb();
	
	
	//Movement y
	if (on_ground  || (on_wall != 0 && global.doublejump)) {
		if (global.doublejump){
			jumps = 2;
		} else {
			jumps = 1;
		}
	}
	
	if ((jumps > 0 && on_ground) || (jumps > 0 &&  global.doublejump) ){
	    if (key_jump) {
	        move_y = jump_speed;
			jumps -= 1;
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
    

	
	//global.player_stamina logic
	if (stamina_can_regen && global.player_stamina < 100 && global.player_stamina >= 0) {
		global.player_stamina += 0.32;
	}
	
	if (global.player_stamina >= 100) global.player_stamina = 100;
	if (global.player_stamina <= 0) global.player_stamina = 0;
	
	if (global.player_stamina > 10 && key_attack || key_attack_strong || key_dash) {
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
     show_debug_message(string(dash_held))
	
	if(key_dash){
		if(global.teleport){
			++dash_held;
		} else {
			regular_dash = true;
		}
		if(dash_held < 50){
			regular_dash = true;
		} else {
			teleport = true;
			regular_dash = false;
		}
	}
	 
	if (on_ground && can_dash && global.player_stamina > 0 && regular_dash && !key_dash) or (can_dash && global.player_stamina > 0 && regular_dash && global.airdash) {
	    dash_cooldown = dash_cool; 
	    can_dash = false;
	    dash_speed = dash_distance / dash_time;
	    dash_energy = dash_distance;
	    dash_direction = point_direction(0,0,image_xscale,0);
	    state = PLAYERSTATE.DASH;
		image_index = 0;
		regular_dash = false;	
		dash_held = 0;
		}
	
	if(dash_held > 50){
		state = PLAYERSTATE.TELEPORT;
		image_index = 0;
		teleport = false;
		teleport_out = true;
		teleport_direction = point_direction(0,0,image_xscale,0);
		dash_held = 0;
	}
    
	if(key_throw) instance_create_layer(x,y-10,layer_create(0,"throw_layer"), obj_thrown_jump_orb)
		
	
	
	if (key_attack && can_attack && global.player_stamina > 10) {
		change_stamina(10);
	    state = PLAYERSTATE.ATTACK_1;
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
						hitflash = true
                     
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

function scr_p_warp() { 
    global.target_room = target_room; 
    global.target_x = target_x;
    global.target_y = target_y;
    global.target_direction = obj_player.direction;
    with (obj_player) state = scr_p_transition();
    room_transition(TRANS_TYPE.FADE, target_room);
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
