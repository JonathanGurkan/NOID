// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_animation() {
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
}