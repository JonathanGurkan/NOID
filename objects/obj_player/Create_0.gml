//Movement variables
last_x = 0;
last_y = 0;
move_x= 0; 
move_y = 0; 
move_x_frac = 0;
move_y_max = 14;
jump_buffer = 0;
on_ground = false;

//gravity
grv = 0.5;
grv_onwall = 0.2;

//movement speeds
walk_speed = 8; // walking speed
jump_speed = -12; // jump strength
walk_acc = 1;
fric_ground_speed = 0.70;
fric_air_speed = 0.15;


//max speed
wall_move_y_max = 5;

//walljump
wall_speed_x = 4;
wall_speed_y = -8;
on_wall = 0;
walljump_delay = 0;
walljump_delay_max = -17;
on_jump_wall = 0;

//Dash variables
dash_speed = 15;      // How fast the dash is
dash_duration = 15;   // How many frames the dash lasts
dash_cooldown = 60;   // How long to wait before dashing again
is_dashing = false;   // Whether the player is currently dashing
dash_timer = 0;       // Timer for dash duration
dash_cooldown_timer = 0;  // Timer for cooldown
dash_direction = 0;   // -1 for left, 1 for right
dash_cool_x = 12;
dash_cool_y = 50;

//HP variables
hp_current = 100;
hp_max = hp_current;
healthbar_width = 136;
healthbar_height = 14;
healthbar_x = 12;
healthbar_y = 20;
death_triggered = false;
flash = 0;

//Damage variables
invincible = false; 
invincibility_timer = 0;  
invincibility_duration = 60;


weapon = noone;
pickup_radius = 50;

collision_speed = walk_speed + 2;