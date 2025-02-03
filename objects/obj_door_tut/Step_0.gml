if (place_meeting(x + 100 ,y,obj_player)) open = true;

if(open && !is_open){
    sprite_index = spr_door_opening;
    if(animation_end()){
        sprite_index = spr_door_open;
        is_open = true;
    }
}





