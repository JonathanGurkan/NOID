/// @description Insert your description here
var obj_list = [obj_enemy_ground_1, obj_platform_tile_1, obj_player];


move_y = move_y + grv;

if (x < obj_player.x) && (!place_meeting(x, y, obj_player)){
    move_x = 1;
} else if (x > obj_player.x) {
    move_x = -1;
} else {
    move_x = 0;
}



if (place_meeting(x + move_x, y, obj_list)) {
    while (!place_meeting(x+sign(move_x),y,obj_list)){
        
        x = x + sign(move_x);
    }
    move_x = 0;
   
}
x = x + move_x; 

if (place_meeting(x, y + move_y, obj_list)) {
    while (!place_meeting(x, y + sign(move_y), obj_list)) {
        y = y + sign(move_y); 
    }
    move_y = 0; 
}

y = y + move_y; 



if (hp <= 0){
    
    instance_destroy();
}
