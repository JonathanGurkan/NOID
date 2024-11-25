function scr_p_free(){
    

    //movement_x
    walljump_delay = max(walljump_delay - 1, 0);
    if (walljump_delay == 0){
        var dir = key_right - key_left;
        move_x += dir * walk_acc;
        var move_x_friction_final = fric_ground_speed;
        
        if (!on_ground) move_x_friction_final = fric_air_speed;
        
        if (dir == 0) {
            move_x = lerp(move_x, 0, move_x_friction_final); 
        }
        move_x = clamp(move_x, -walk_speed, walk_speed); 
    }
    
    
    //walljump
    if (on_wall != 0) && (!on_ground) && (on_jump_wall != 0) && (key_jump){
        
        walljump_delay = walljump_delay_max;
        move_x = -on_wall * wall_speed_x;
        move_y = wall_speed_y;
    }
    var grv_final = grv;
    var move_y_max_final = move_y_max;
    
    
    if(on_jump_wall != 0) && (move_y > 0){
        grv_final = 0;
        move_y_max_final = 0;
        
    }
    
    if (on_wall != 0) && (move_y > 0) && (on_jump_wall = 0){
        grv_final = grv_onwall;
        move_y_max_final = 5;
    }
    
    
    //movement_y
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
    if (can_dash && key_dash &&  move_x != 0){
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
    
  
     scr_p_animation();
    

    
    
}