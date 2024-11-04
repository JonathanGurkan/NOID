var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
var key_jump_held = keyboard_check(vk_space) || keyboard_check(ord("W"));
var key_dash = keyboard_check_pressed(vk_shift);
var key_pickup = keyboard_check_pressed(ord("E"));
var move = key_right - key_left;

//MOVEMENT PLAYER


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

// x-collision
if (place_meeting(x+move_x,y,obj_platform_tile)){
    
    while (!place_meeting(x+sign(move_x),y,obj_platform_tile)){
       
        x += sign(move_x);
       
    }
    move_x = 0;
   
}

x += move_x;



// y-collision
if (place_meeting(x,y+move_y,obj_platform_tile)) {
    
    while (!place_meeting(x,y+sign(move_y),obj_platform_tile)){
        
        y += sign(move_y);
       
    }
    move_y = 0;
    
}

y += move_y;

// Dash logic
if (key_dash && dash_cooldown_timer <= 0 && !is_dashing) {
    // Start dash
    is_dashing = true;
    dash_timer = dash_duration;
    

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
    walk_speed = 3;
    if (dash_cooldown_timer > 0){
    dash_cooldown_timer -= 1;
    }
    
    
}


on_ground = place_meeting(x,y+1,obj_platform_tile);
on_wall = place_meeting(x+1,y,obj_platform_tile) - place_meeting(x-1,y,obj_platform_tile); 
on_jump_wall = place_meeting(x+1,y,obj_wallclimb);

    if (on_ground) {
        jump_buffer = 20;
    }




// weapon system
if(key_pickup){
    var pickup_list = ds_list_create();
    var weapons = [obj_weapon, obj_weapon_sword]
    var pickup_count = collision_circle_list(x, y, pickup_radius, weapons, false, true, pickup_list, true);
    
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


//damage system





//animation

if (obj_weapon_sword.sword_use){
    image_speed = 1;
    sprite_index = spr_sword_a;
}

else{
if (!on_ground) {
    sprite_index = spr_player_up;
    image_speed = 0;
    if (sign(move_y) > 0) image_index = 1; else image_index = 0;
    } else {
image_speed = 1;
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


if (is_dashing) {
    if(!place_meeting(x,y+1,obj_platform_tile)){
        sprite_index = spr_player_dash_air;
    } else {
        image_speed = 1
        sprite_index = spr_player_dash_ground;
    }
    
}
}







//reset room om 0 hp / r pressed
if  (keyboard_check(ord("R"))){
    room_restart();
}

if (hp_current <= 0) {
    instance_destroy()
    instance_destroy(weapon)
}

