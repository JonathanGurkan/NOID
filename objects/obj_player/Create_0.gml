/// @Movement variables
move_x= 0; // horizontal speed
move_y = 0; // vertical speed
walk_speed = 8; // walking speed
jump_speed = 12; // jump strength
dash_speed = 30; // speed when dashing
grv = 0.5;

//dash variables
dash_duration = 10; // how long the dash lasts (in frames)
dash_cooldown = 30; // cooldown before next dash
dash_time = 0; // time left to dash
dash_ready = true; // whether the dash is ready to use

//hp variables
hp_current = 100;
hp_max = hp_current;
healthbar_width = 100;
healthbar_height = 10;
healthbar_x = 10;
healthbar_y = 20;

//damage variables
invincible = false; 
invincibility_timer = 0;  
invincibility_duration = 60;

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

move_ = key_right - key_left;


//dash_input
if (keyboard_check_pressed(vk_shift) && dash_ready && dash_time == 0) {
    if (move_x != 0) { 
        dash_ready = false;
        dash_time = dash_duration;
    }
}


