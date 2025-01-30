
function scr_p_endtut(){
    if(y < 208) collision();
    else {
        x += 1;
        sprite_index = spr_player_move;
    }
    
    if (x == 283) {
        x -= 1;
        sprite_index = spr_player_kneel;
        if(animation_end()){
            image_speed = 0;
            
        }
        obj_camera.follow = obj_cutscene_cam;
        
    }

    
    
}