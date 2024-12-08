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