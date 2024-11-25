state = PLAYERSTATE.FREE;

//keybinds
key_left = false;
key_bow = false;
key_dash = false;
key_jump = false;
key_right = false;
key_jump_held = false;
move = false;
key_use = false;
key_sword = false;

//prites
sprite_run = spr_player_w;
sprite_idle = spr_player;



//Movement variables
last_x = 0;
last_y = 0;
move_x= 0; 
move_y = 0; 
move_x_frac = 0;
move_y_frac = 0;
jump_buffer = 0;
on_ground = 0;


//gravity
grv = 0.25;

//movement speeds
walk_speed = 2; // walking speed
jump_speed = -6; // jump strength
walk_acc = 0.4;
fric_ground_speed = 0.70;
fric_air_speed = 0.3;


//max speed
wall_move_y_max = 0;
move_y_max = 13;

//walljump
wall_speed_x = 5;
wall_speed_y = -4;
on_wall = 0;
walljump_delay = 0;
walljump_delay_max = -17;
on_jump_wall = 0;
grv_onwall = 0;


//Dash variables
can_dash = 1;
dash_distance = 96;
dash_time = 12;
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
inviancibility_duration = 60;


weapon = noone;
pickup_radius = 50;


collision_speed = walk_speed + 2;
can_attack = true;


//enums

hit_by_attack = ds_list_create();
enum PLAYERSTATE{
    FREE,
    ATTACK,
    ATTACK_COMBO,
    ATTACK_BOW,
    DASH
}




