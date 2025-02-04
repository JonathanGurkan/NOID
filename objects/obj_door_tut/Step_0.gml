if (distance_to_object(obj_player) < 150) open = true;

if(open && !is_open){
    sprite_index = spr_door_opening;
    if(animation_end()){
        sprite_index = spr_door_open;
        is_open = true;
    }
}





