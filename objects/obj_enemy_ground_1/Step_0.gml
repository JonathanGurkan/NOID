/// @description Insert your description here

move_y = move_y + grv;

if (x < obj_player.x) {
    move_x = 1;
} else if (x > obj_player.x) {
    move_x = -1;
} else {
    move_x = 0;
}


if (!place_meeting(x + move_x, y, obj_platform_tile_1)) {
    x = x + move_x; 
}


if (place_meeting(x, y + move_y, obj_platform_tile_1)) {
    while (!place_meeting(x, y + sign(move_y), obj_platform_tile_1)) {
        y = y + sign(move_y); 
    }
    move_y = 0; 
}

y = y + move_y; 

if (hp <= 0){
    
    instance_destroy();
}
show_debug_message(string(hp));