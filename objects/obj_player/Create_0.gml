/// @Movement variables
move_x = 0; // horizontal speed
move_y = 0; // vertical speed
walk_speed = 8; // walking speed
jump_speed = 18; // jump strength
dash_speed = 15; // speed when dashing
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
 knockback = false;
 knockback_timer = 0;
 knockback_duration = 10;
 knockback_x = 0;
 knockback_y = 0;
 knockback_strength = 0.7;

// Collision settings
ground_normal = 1; // represents ground object
