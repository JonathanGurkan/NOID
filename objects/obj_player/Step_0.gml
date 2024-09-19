//MOVEMENT PLAYER



var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space);
var key_dash = keyboard_check_pressed(vk_shift);

//move_calc
var move = key_right - key_left;

move_x = move * walk_speed;
move_y = move_y + grv;


if (place_meeting(x,y+1, obj_platform_tile_1)) && (key_jump){
    
    move_y = -jump_speed;
    
}


// x-collision
if (place_meeting(x+move_x,y,obj_platform_tile_1)){
    
    while (!place_meeting(x+sign(move_x),y,obj_platform_tile_1)){
       
        x = x + sign(move_x);
    }
    
    move_x = 0;
}

x = x + move_x;

// y-collision
if (place_meeting(x,y+move_y,obj_platform_tile_1)){
    
    while (!place_meeting(x,y+sign(move_y),obj_platform_tile_1)){
        
        y = y + sign(move_y);
    }
    move_y = 0;
    
}

y = y + move_y;

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
    
    dash_timer -= 1;
    move_y = 0;
    
    
    if (move = 1) or (move = -1) {
        walk_speed = dash_speed;
    }
    
    
    // Check if the dash duration has ended
    if (dash_timer <= 0) {
        is_dashing = false;
        
    }
    
} 

else {
    walk_speed = 8;
   
    
    if (dash_cooldown_timer >= 0){
    dash_cooldown_timer -= 1;
    }
    
    
}


//damage + invincibility
if (place_meeting(x, y, obj_enemy_ground_1)) {
	if (!invincible) {
        hp_current -= 10; 
        invincible = true; 
        invincibility_timer = invincibility_duration; 
    }
}

if (invincible) {
    invincibility_timer -= 1; 
    if (invincibility_timer <= 0) {
        invincible = false;
    }
}


   
//reset room om 0 hp / r pressed
if  (keyboard_check(ord("R")) or (hp_current <= 1)) {
    room_restart()


}

show_debug_message("Player X: " + string(x) + " Move X: " + string(move_x) + " Dash Cooldown: " + string(dash_cooldown_timer) + " Dash Timer: " + string(dash_timer)+ "Move" + string(move));

