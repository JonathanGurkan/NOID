key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(vk_space) || keyboard_check(ord("W"));
key_dash = keyboard_check_pressed(vk_shift);
key_use = keyboard_check_pressed(ord("E"));
key_attack = mouse_check_button_pressed(mb_left);
key_attack_strong = mouse_check_button(mb_right);
move = key_right - key_left;
on_ground = place_meeting(x,y+1,collision_map);


//reset room om 0 hp / r pressed
//to reset game press T
if  (keyboard_check(ord("R"))){
    room_restart();
}

if  (keyboard_check_pressed(ord("H"))){
    screenshake(3, 60);
}


if (!global.gamepaused) {
    switch (state) {
        case PLAYERSTATE.FREE: scr_p_free(); break;
        case PLAYERSTATE.ATTACK_1: scr_p_attack_1(); break;
        case PLAYERSTATE.ATTACK_2: scr_p_attack_2(); break; 
        case PLAYERSTATE.ATTACK_3: scr_p_attack_3(); break;
        case PLAYERSTATE.DASH: scr_p_dash(); break;
        case PLAYERSTATE.ATTACK_STRONG: scr_p_attack_strong(); break;
    }
}

if(keyboard_check_pressed((ord("L")))){
    stamina_timer = 0;
}

