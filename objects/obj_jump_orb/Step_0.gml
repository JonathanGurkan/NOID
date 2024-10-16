in_jump_orb = place_meeting(x+1,y,obj_player);
var key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

if (in_jump_orb) && (orb_time <= 0) && (key_jump){
        orb_time = 10;
        obj_player.jump_buffer = 6;
    }

if (orb_time > 0){
    orb_time -= 0.1;
}



show_debug_message(" orb"+ string(orb_time));
