
function scr_p_endtut(){
    show_debug_message(x)
    
    if(y < 208) collision();
    else {
        x += 1;
        sprite_index = spr_player_move;
    }
    var frac_x = round(x);
    if (frac_x == 283) {
        x -= 1;
        obj_cutscene_cam.y -= 0.2; 
        obj_camera.follow = obj_cutscene_cam;
        sprite_index = spr_player_kneel;
        if(animation_end()){
            image_speed = 0;
        }
    }
    var cam_y = round(obj_cutscene_cam.y);
    with(obj_cutscene_cam){
     if (cam_y = 90) obj_player.draw_text_cut = true;
    }

}