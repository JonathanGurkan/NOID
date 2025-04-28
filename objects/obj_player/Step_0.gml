key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("Z"));
key_jump_held = keyboard_check(ord("Z"));
key_dash = keyboard_check(ord("C"));
key_use = keyboard_check_pressed(ord("E"));
key_attack = keyboard_check_pressed(ord("X"));
key_attack_strong = mouse_check_button(mb_right);
on_ground = place_meeting(x,y+1,collision_map);
on_wall = place_meeting(x+1,y,obj_collision) - place_meeting(x-1,y,obj_collision); 
dist_to_wall = distance_to_object(obj_wall);

if (!global.gamepaused) {
    switch (state) {
        case PLAYERSTATE.FREE: scr_p_free(); break;
        case PLAYERSTATE.ATTACK_1: scr_p_attack_1(); break;
        case PLAYERSTATE.ATTACK_2: scr_p_attack_2(); break; 
        case PLAYERSTATE.ATTACK_3: scr_p_attack_3(); break;
        case PLAYERSTATE.DASH: scr_p_dash(); break;
        case PLAYERSTATE.PARRY: scr_p_attack_strong(); break;
        case PLAYERSTATE.ENDTUT: scr_p_endtut(); break;
		case PLAYERSTATE.DEATH: scr_p_death(); break;
		case PLAYERSTATE.LOCK: do_nothing(); break;
		case PLAYERSTATE.TELEPORT: scr_p_teleport(); break;
    }
}
scr_p_global();

if(room = r_end_end && keyboard_check(vk_enter)) room = r_main_menu;