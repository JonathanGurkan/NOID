// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision() {
    //x-collision
    if (place_meeting(x+move_x,y,collision_map)) {
        while (!place_meeting(x+sign(move_x),y,collision_map)) {
            x += sign(move_x)
		}
    move_x = 0;
    }
    x += move_x;

    // y-collision
    var grv_final = grv;
        var move_y_max_final = move_y_max;
        move_y += grv_final;
        move_y = clamp(move_y,-move_y_max_final,move_y_max_final);
    
    
    if (place_meeting(x,y+move_y,collision_map)) {
        while (!place_meeting(x,y+sign(move_y),collision_map)) {
            y += sign(move_y)
        }
        move_y = 0 
    }
    y += move_y;
}
