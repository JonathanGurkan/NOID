key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) xor keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(vk_space) xor keyboard_check(ord("W"));
key_dash = keyboard_check_pressed(vk_shift);
key_use = keyboard_check_pressed(ord("E"));
key_attack = mouse_check_button_pressed(mb_left);
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
		case PLAYERSTATE.DEATH: scr_p_death(); break
		case PLAYERSTATE.LOCK: do_nothing(); break
    }
}
scr_p_global();

if(room = r_end_end && keyboard_check(vk_enter)) room = r_main_menu;

show_debug_message(
    "walk_speed: " + string(walk_speed) + "\n" +
    "run_speed: " + string(run_speed) + "\n" +
    "move_y_max: " + string(move_y_max) + "\n" +
    "move_x_max_final: " + string(move_x_max_final) + "\n" +
    "x: " + string(x) + "\n" +
    "can_dash: " + string(can_dash) + "\n" +
    "dash_cool: " + string(dash_cool) + "\n" +
    "dash_cooldown: " + string(dash_cooldown) + "\n" +
    "dash_direction: " + string(dash_direction) + "\n" +
    "dash_energy: " + string(dash_energy) + "\n" +
    "dash_distance: " + string(dash_distance) + "\n" +
    "dash_speed: " + string(dash_speed) + "\n" +
    "dash_time: " + string(dash_time)
	)
