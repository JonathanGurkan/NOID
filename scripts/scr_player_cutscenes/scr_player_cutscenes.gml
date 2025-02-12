
function scr_p_endtut(){
	
	if (wait > 0) wait--
	
    if(y < 288) collision();
    else {
        x += 1;
        sprite_index = spr_player_move;
    }
    var frac_x = round(x);
    if (frac_x == 283) {
	if(!init){
		init = true;
		wait = wait_time;
	}
        x -= 1;
		sprite_index = spr_player_kneel;
        if(animation_end()) image_speed = 0;
		if (wait <= 0){
        obj_cutscene_cam.y -= 0.4; 
        obj_camera.follow = obj_cutscene_cam;
       
		}
    }
    var cam_y = round(obj_cutscene_cam.y);
    with(obj_cutscene_cam){
     if (cam_y = 90) obj_player.draw_text_cut = true;
    }
    
    if(instance_exists(obj_room_exit) && alpha = 1) obj_room_exit.y -= 0.5;
}