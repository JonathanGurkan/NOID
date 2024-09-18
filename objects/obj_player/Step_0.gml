//MOVEMENT PLAYER

//imput
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
if (key_dash && !dash_ready && dash_cooldown <= 0) {
    dash_ready = true;
    dash_time = dash_duration;
}

if (dash_ready) {
    move_x = move_x * dash_speed;
    dash_time -= 1;
    move_y = 0;
    
    if (dash_time <= 0) {
        dash_ready= false;
        dash_cooldown = 30; // Cooldown before dash can be used again
    }
}

if (dash_cooldown > 0 && !dash_ready) {
    dash_cooldown -= 1;
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