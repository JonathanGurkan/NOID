// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_stun(){

    // Movement
    move_y= lengthdir_x(stun_speed, direction - 180);
    move_x = lengthdir_y(stun_speed, direction - 180);
    
    move_distance_remaining = max(0, move_distance_remaining - stun_speed);
    var _collided = collision();
    
    // Change Height
    z = sin((move_distance_remaining / stun_distance) * pi) * dash_height_distance;
    
    // Change State
    if (move_distance_remaining <= 0) {
        state = PLAYERSTATE.FREE;
    }
    
    
    
}