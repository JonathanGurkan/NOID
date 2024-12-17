	function do_nothing() {
	//ye, just do nothing
	}
	
	function scr_p_animation() {
	    if(!on_ground){
	    if (move_y < 0) {
	        sprite_index = spr_player_up;
	    } 
    
	    if (move_y > 0){
	        sprite_index = spr_player_down;
        
	    }
        
	    } else {
        
	        if (move_x == 0) {
	            sprite_index = spr_player;
	        } else {
	            image_speed = 1;
	            sprite_index =  spr_player_r;
	        } 
	    }
        
		var angle = point_direction(x, y, mouse_x, mouse_y);
        
	    // Constrain the angle between -90 and 90 degrees
	    if (angle > 90 && angle < 270) {
	        image_xscale = -1;
	    } else {
	        image_xscale = 1;
	    }
	}
	
	function scr_p_attack() {
	    process_attack(spr_player_a_1,spr_player_a_1_hitbox)
    
	    if(key_attack) && (image_index > 2) && (stamina > 0){
	        --stamina;
	        state = PLAYERSTATE.ATTACK_COMBO;
	        return;
	    }
	
		if (animation_end()) {
		    sprite_index = spr_player;
		    state = PLAYERSTATE.FREE;
		     can_attack = true;
		}
	}
	
	function scr_p_attack_combo() {
	    process_attack(spr_player_a_2,spr_player_a_2_hitbox)
        
	    if(key_attack) && (image_index > 2) && (stamina > 0){
	        --stamina;
	        state = PLAYERSTATE.ATTACK;
	        return;
	    }
        
	    if (animation_end()) {
	        sprite_index = spr_player;
	        state = PLAYERSTATE.FREE;
	        can_attack = true;
	    }
	}
	
	function scr_p_attack_strong(){
	    if(stamina > 0){
	    process_attack(spr_player_a_strong,spr_player_a_strong_hitbox);
	    }
    
	    if (animation_end()) {
	        sprite_index = spr_player;
	        state = PLAYERSTATE.FREE
	        can_attack = true;
	        obj_player.x += 64 * image_xscale;
	    }
	}
	
	function scr_p_dash() {
		collision();
   
 
	    move_x = lengthdir_x(dash_speed,dash_direction)
	    move_y = 0;
    
	    with(instance_create_depth(x,y,depth+1,obj_trail)){
	        sprite_index = other.sprite_index;
	        image_blend = c_white;
	        image_alpha = 0.7;
        
	    }
    
    
	    dash_energy -= dash_speed
	    if(!place_meeting(x,y+1,collision_map)) {
	        sprite_index = spr_player_dash_air;
	    } else {
	        image_speed = 1
	        sprite_index = spr_player_dash_ground;
	    }
	    if (dash_energy <= 0) {
	            move_x = 0;
	            move_y = 0;
	            can_dash  = true
	            state = PLAYERSTATE.FREE;
	    }
	}
	
	function scr_p_free() {
	    //movement_x
	    var _move_x_max_final = move_x_max_final;
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

	    //movement_y
	    if (jump_buffer > 0) {
	        jump_buffer--;
	        if (key_jump) {
	            jump_buffer = 0;
	            move_y = jump_speed;
	        }
	    }
   
	    if (move_y < 0) && (!key_jump_held){
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
	
	    //key inputs
	    if (dash_cooldown <= 0){
	        can_dash = true
	    } else {
	        can_dash = false;
	        -- dash_cooldown;
	    }
     
	    if (can_dash && key_dash &&  move_x != 0 && stamina > 0) {
	        dash_cooldown = dash_duration;
	        can_dash = false;
	        dash_direction =  point_direction(0,0,key_right-key_left,0);
	        dash_speed = dash_distance / dash_time;
	        dash_energy = dash_distance;
	        --stamina
	        state = PLAYERSTATE.DASH;
	    }
	    if (key_attack && on_ground && can_attack && stamina > 0) {
	         --stamina;
	        state = PLAYERSTATE.ATTACK
	        can_attack = false; 
	    }
	    if (key_attack_strong){
	        state = PLAYERSTATE.ATTACK_STRONG;
	    }
		if (key_use) {
	            // Make an NPC face the player
	    }
	     scr_p_animation();
	}
	
	function scr_p_hurt(damage) {
	    scr_p_animation();
	    collision();
	    if (invincible <= 0) { // Check if player is invincible
	        global.player_health = max(0, global.player_health - damage); // Reduce health
	        show_debug_message(string(global.player_health)); // Debug output

	        if (global.player_health > 0) { // If player survives the hit
	            state = scr_p_stun(); // Set state to stun
	            screenshake(2, 10); // Apply screen shake
	            flash = 3; // Set flash effect
	            invincible = 30; // Set invincibility frames
	        } else {
	            // Kill the player logic here
	            show_debug_message("Player killed");
	        }
	    }
	}
	
	function process_attack(sprite, mask) {
	    if (sprite_index != sprite){
	            sprite_index = sprite;
	            image_index = 0;
	            ds_list_clear(hit_by_attack)
	        }
	        mask_index = mask;
	        var hit_by_attack_now = ds_list_create();
	        var hits = instance_place_list(x,y,obj_enemy,hit_by_attack_now,false)
	        if (hits > 0){
	            for (var i = 0; i < hits; i++){
	                var hit_id = hit_by_attack_now[| i];
	                if(ds_list_find_index(hit_by_attack,hit_id) == -1){
	                    ds_list_add(hit_by_attack,hit_id);
	                    with(hit_id){
	                        --enemy_hp
	                    }
	                }
	            }
	        }
	        ds_list_destroy(hit_by_attack_now)
	        mask_index = spr_player;
	}
	
	function scr_p_transition() {
	    scr_p_animation();
	    collision();
	}
