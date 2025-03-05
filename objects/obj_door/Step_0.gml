var dist_p = distance_to_object(obj_player)

if (needs_key){
	if(global.got_key = true){
		door_can_open = true;
		if(obj_player.key_use) init = true;
	}
} else {
 if(obj_player.key_use) init = true;
}
	
if (dist_p < 10 && init && !is_open){
	if(door_can_open){
		open = true;
		} else {
		sprite_index = spr_door_closed_1;
	    if(animation_end()){
	     sprite_index = spr_door_closed;
		 init = false;
    }
}
}
	
if(open && !is_open){
    if (!audio_is_playing(snd_r_door_open)) audio_play_sound(snd_r_door_open,0,0);
    sprite_index = spr_door_opening;
    if(animation_end()){
	image_speed = 0;
	mask_index = spr_door_open;
	is_open = true;
    }
}









