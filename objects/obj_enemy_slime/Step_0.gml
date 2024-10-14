// Physics and movement logic remains unchanged
var obj_list = [obj_platform_tile, obj_platform_tile_flat];  // Include the player in collisions


move_y = move_y + grv;
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

// Check if the player still exists
if (instance_exists(obj_player)) {
    var dist_to_player = point_distance(x, y, player.x, player.y);
    
    if (dist_to_player < trigger_radius) {
        idle = false;  // Enemy starts chasing the player
    } else {
        idle = true;
        move_x = 0;  // Enemy remains idle or stops chasing
    }
    
    // If the enemy is not idle, it follows the player
    if (!idle) {
        // Get direction towards the player
        var enemy_direction = point_direction(x, y, player.x, player.y - 10);
        
        // Move the enemy towards the player, adjusting move_x smoothly
        move_x = lengthdir_x(move_speed, enemy_direction);
    }
} else {
    // If the player doesn't exist, the enemy becomes idle
    idle = true;
    move_x = 0;
}

if (move_y = 0) {
    // Enemy is on the ground
    if (move_x == 0) {
        sprite_index = spr_slime;  
        image_speed = 0;  
    } else {
        sprite_index = spr_slime_r; 
        image_speed = 1;  
    }
} else {
    
    sprite_index = spr_slime_up;  
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

show_debug_message(string(hp))