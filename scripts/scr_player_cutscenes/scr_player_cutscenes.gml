
function scr_p_endtut(){
    if(y < 208) collision();
    else {
        x += 1;
        sprite_index = spr_player_move;
    }
    
    if (x == 283) {
        x -= 1;
        obj_cutscene_cam.y -= 0.2; 
        obj_camera.follow = obj_cutscene_cam;
        sprite_index = spr_player_kneel;
        if(animation_end()){
            image_speed = 0;
        }
    }
   
    show_debug_message(obj_player.draw_text_cut);
    var cam_y = round(obj_cutscene_cam.y);
     show_debug_message(cam_y);
    with(obj_cutscene_cam){
     if (cam_y = 90) obj_player.draw_text_cut = true;
    }

}