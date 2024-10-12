var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
var key_dash = keyboard_check_pressed(vk_shift);
var key_pickup = keyboard_check(ord("E"));
var obj_list = [obj_platform_tile_1];

//MOVEMENT PLAYER
var move = key_right - key_left;
move_x = move * walk_speed;
move_y = move_y + grv;


if (place_meeting(x,y+1, obj_list)) && (key_jump){
    
    move_y = -jump_speed;
    
}


// x-collision
if (place_meeting(x+move_x,y,obj_list)){
    
    while (!place_meeting(x+sign(move_x),y,obj_list)){
       
        x = x + sign(move_x);
       
    }
    move_x = 0;
   
}

x = x + move_x;



// y-collision
if (place_meeting(x,y+move_y,obj_list)) {
    
    while (!place_meeting(x,y+sign(move_y),obj_list)){
        
        y = y + sign(move_y);
       
    }
    move_y = 0;
    
}

y = y + move_y;

//weapon pickup


// Dash logic
if (key_dash && dash_cooldown_timer <= 0 && !is_dashing) {
    // Start dash
    is_dashing = true;
    dash_timer = dash_duration;
    
    // Set dash direction based on current movement
    if (move != 0) {
        dash_direction = sign(move); // Dash in the current movement direction
    } else {
        dash_direction = 1; // Default to dashing to the right if no movement is pressed
    }
    
    dash_cooldown_timer = dash_cooldown;  // Set cooldown timer after dash ends
}

if (is_dashing) {
    invincible = true;
    dash_timer -= 1;
    move_y = 0;
    
    
    if (move = 1) or (move = -1) {
        walk_speed = dash_speed;
    }
    
    
    // Check if the dash duration has ended
    if (dash_timer == 0) {
        is_dashing = false;
        
    }
    
} 

else {
    walk_speed = 8;
   
    
    if (dash_cooldown_timer > 0){
    dash_cooldown_timer -= 1;
    }
    
    
}


//animation


if (!place_meeting(x,y+1,obj_platform_tile_1)) {
    sprite_index = spr_player_up;
    image_speed = 0;
    if (sign(move_y) > 0) image_index = 1; else image_index = 0;
    } else {
image_speed = 1;
    if (move_x == 0) {
        sprite_index = spr_player_idle;
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


if (is_dashing) {
    if(!place_meeting(x,y+1,obj_platform_tile_1)){
        sprite_index = spr_player_dash_air;
    } else {
        image_speed = 1;
        sprite_index = spr_player_dash_ground;
    }
    
}


if(keyboard_check_pressed(key_pickup)){
    var pickup_list = ds_list_create();
    var pickup_count = collision_circle_list(x, y, pickup_radius, obj_weapon, false, true, pickup_list, true);
    
    if(pickup_count > 0){
        
        if(weapon == noone){
            weapon = pickup_list[| 0];
            
            weapon.target = id;
            weapon.is_being_carried = true;
        } else{
            for(var index = 0; index < pickup_count; index ++){
                if(pickup_list[| index] != weapon){
                    weapon.target = noone;
                    weapon.is_being_carried = false;
                    
                    weapon = pickup_list[| index];
                    weapon.target = id;
                    weapon.is_being_carried = true
                    
                    break;
                }
            }
                
        }
    }
     ds_list_destroy(pickup_list);
}


//reset room om 0 hp / r pressed
if  (keyboard_check(ord("R"))){
    room_restart();
}

if (hp_current <= 0) {
    instance_destroy()
    instance_destroy(obj_gun)
}