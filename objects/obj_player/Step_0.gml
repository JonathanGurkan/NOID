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

// Toggle the info display with F1
if (keyboard_check_pressed(vk_f1)) {
    active_f1 = !active_f1;
}

// Process scrolling only if the info display is active
if (active_f1) {
    // Scroll down when pressing the down arrow
    if (keyboard_check(vk_down)) {
        scroll_y += scroll_speed;
    }
    // Scroll up when pressing the up arrow
    if (keyboard_check(vk_up)) {
        scroll_y -= scroll_speed;
    }
    
    // Clamp scroll_y so you don't scroll past the sprite limits
    var spr_h = sprite_get_height(spr_gameinfo);
    scroll_y = clamp(scroll_y, 0, max(0, spr_h - room_height));
}
