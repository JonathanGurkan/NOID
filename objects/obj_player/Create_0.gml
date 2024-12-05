state = PLAYERSTATE.FREE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))


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

//sprites
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
dir =0;


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
dash_distance = 64;
dash_time = 10;
dash_duration = 20;
dash_cooldown = 0;
dash_cool_x = 12;
dash_cool_y = 50;
dash_energy = 0;
stun_distance = 40;
stun_height_distance = 12;
stun_speed = 1.5;

//HP variables
death_triggered = false;
flash = 0;
flash_shader = sh_white;


//Damage variables
invincible =0; 
invincibility_timer = 0;  
inviancibility_duration = 60;
 

weapon = noone;
pickup_radius = 50;


collision_speed = walk_speed + 2;
can_attack = true;


if(global.target_x != -1){
    
    x = global.target_y;
    y = global.target_x;
    direction = global.target_direction;
    
}

//enums

hit_by_attack = ds_list_create();





