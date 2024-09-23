/// @Movement variables
move_x= 0; // horizontal speed
move_y = 0; // vertical speed
walk_speed = 8; // walking speed
jump_speed = 12; // jump strength
grv = 0.5;
collision_speed = walk_speed + 2;

//dash variables
dash_speed = 15;      // How fast the dash is
dash_duration = 15;   // How many frames the dash lasts
dash_cooldown = 30;   // How long to wait before dashing again
is_dashing = false;   // Whether the player is currently dashing
dash_timer = 0;       // Timer for dash duration
dash_cooldown_timer = 0;  // Timer for cooldown
dash_direction = 0;   // -1 for left, 1 for right

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

