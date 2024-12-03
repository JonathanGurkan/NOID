key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(vk_space) || keyboard_check(ord("W"));
key_dash = keyboard_check_pressed(vk_shift);
key_use = keyboard_check_pressed(ord("E"));
key_sword = mouse_check_button_pressed(mb_left);
key_bow = mouse_check_button(mb_right);
move = key_right - key_left;

 



on_ground = place_meeting(x,y+1,collision_map);
on_wall = place_meeting(x+1,y,collision_map) - place_meeting(x-1,y,collision_map); 
on_jump_wall = place_meeting(x+1,y,obj_wallclimb);



//reset room om 0 hp / r pressed
//to reset game press T
if  (keyboard_check(ord("R"))){
    room_restart();
}

if  (keyboard_check_pressed(ord("H"))){
    screenshake(3, 60);
    show_debug_message(string("aaaaaaa"));
}

if (hp_current <= 0) {
    instance_destroy();
    instance_destroy(weapon);
}


if(!global.gamepaused) {
    switch (state){
        case PLAYERSTATE.FREE: scr_p_free(); break;
        case PLAYERSTATE.ATTACK: scr_p_attack(); break;
        case PLAYERSTATE.ATTACK_COMBO: scr_p_attack_combo(); break; 
        case PLAYERSTATE.DASH: scr_p_dash(); break;
        case PLAYERSTATE.ATTACK_BOW: scr_p_attack_bow(); break;
    }
	
	var frames = game_get_speed(gamespeed_fps);
show_debug_message("Game FPS: " + string(room_speed));
}