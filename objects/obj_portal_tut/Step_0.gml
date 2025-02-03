var enemy_count = instance_number(par_enemy);
var distance_to_p = distance_to_object(obj_player);

if (timer >= 0) timer -- 

if (timer = 1){
   teleport = true
    image_speed = 0;
    image_index = 0;
}


if (enemy_count <= 1 && distance_to_p < 20 && obj_player.key_use) trigger = true;
    
if(trigger){
    if (init = false) {
        timer = time;
        init = true;
    }
    with(obj_player){
    if(instance_exists(obj_portal_tut)){
    x = obj_portal_tut.x
    y = obj_portal_tut.y
    sprite_index = spr_player_idle;
    }
    }
}

    
if(teleport){
    image_speed = 1;
    sprite_index = spr_portal_warp;
        if(animation_end()){
            image_speed = 0;
            scr_p_teleport();
        }
    with(obj_player) visible = false;
}
    

