key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(vk_space) || keyboard_check(ord("W"));
key_dash = keyboard_check_pressed(vk_shift);
key_use = keyboard_check_pressed(ord("E"));
key_sword = mouse_check_button_pressed(mb_left);
key_bow = mouse_check_button(mb_right);
move = key_right - key_left;

  switch (state){
    case PLAYERSTATE.FREE: scr_p_free(); break;
    case PLAYERSTATE.ATTACK: scr_p_attack(); break;
    case PLAYERSTATE.ATTACK_COMBO: scr_p_attack_combo(); break; 
    case PLAYERSTATE.DASH: scr_p_dash(); break;
    case PLAYERSTATE.ATTACK_BOW: scr_p_attack_bow(); break;
}



on_ground = place_meeting(x,y+1,obj_platform_tile);
on_wall = place_meeting(x+1,y,obj_platform_tile) - place_meeting(x-1,y,obj_platform_tile); 
on_jump_wall = place_meeting(x+1,y,obj_wallclimb);
    






//reset room om 0 hp / r pressed
if  (keyboard_check(ord("R"))){
    room_restart();
}

if (hp_current <= 0) {
    instance_destroy();
    instance_destroy(weapon);
}

show_debug_message(string(move_x))