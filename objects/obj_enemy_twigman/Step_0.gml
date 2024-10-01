/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (move_y = 0) {
    // Enemy is on the ground
    if (move_x == 0) {
        sprite_index = spr_twigman;  
        image_speed = 0;  
    } else {
        sprite_index = spr_twigman_r; 
        image_speed = 1;  
    }
} else {
    
    sprite_index = spr_twigman_up;  
    image_speed = 0;  
    if (move_y > 0) {
        image_index = 1;  
    } else {
        image_index = 0;  
    }
}


if (move_x != 0) {
    image_xscale = sign(move_x);
}