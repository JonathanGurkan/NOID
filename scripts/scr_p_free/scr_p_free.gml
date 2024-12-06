function scr_p_free(){
    //movement_x
    var _move_x_max_final = move_x_max_final;
    dir = key_right - key_left;
    move_x += dir * walk_acc;
    move_x = clamp(move_x,-move_x_max_final,move_x_max_final);
    var move_x_friction_final = fric_ground_speed;
    if (!on_ground) move_x_friction_final = fric_air_speed;
    if (dir == 0) {
        move_x = lerp(move_x, 0, move_x_friction_final); 
    }

    //movement_y
    var grv_final = grv;
    var move_y_max_final = move_y_max;
    move_y += grv_final;
    move_y = clamp(move_y,-move_y_max_final,move_y_max_final);
    if (jump_buffer > 0) {
        jump_buffer--;
        if (key_jump) {
            jump_buffer = 0;
            move_y = jump_speed;
        }
    }
   
    if (move_y < 0) && (!key_jump_held){
        move_y = max(move_y, -jump_speed/4);
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
     
    if (can_dash && key_dash &&  move_x != 0) {
        dash_cooldown = dash_duration;
        can_dash = false;
        dash_direction =  point_direction(0,0,key_right-key_left,0);
        dash_speed = dash_distance / dash_time;
        dash_energy = dash_distance;
        state = PLAYERSTATE.DASH;
    }
    if (key_sword && on_ground && can_attack) {
        state = PLAYERSTATE.ATTACK
        can_attack = false; 
    }
    if (key_bow){
        state = PLAYERSTATE.ATTACK_BOW
    }
	if (key_use) {
            // Make an NPC face the player
    }
    
     scr_p_animation();
}