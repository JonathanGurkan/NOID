if (distance_to_object(obj_player) < 150) open = true;

if(open && !is_open){
    if (!audio_is_playing(s_r_door_open)) audio_play_sound(s_r_door_open,0,0);
    sprite_index = spr_door_opening;
    if(animation_end()){
        sprite_index = spr_door_open;
        is_open = true;
    }
}