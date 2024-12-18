state = PLAYERSTATE.FREE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))

//keybinds
key_left = false;
key_dash = false;
key_jump = false;
key_right = false;
key_jump_held = false;
move = false;
key_use = false;
key_attack = false;
key_attack_strong = false;


//sprites
sprite_run = spr_player_walk;
sprite_idle = spr_player;

click = 0;




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
z = 0;
knockback_speed = 0;

//gravity
grv = 0.25;

//movement speeds
walk_speed = 2; // walking speed
jump_speed = -6; // jump strength
walk_acc = 0.4;
fric_ground_speed = 0.70;
fric_air_speed = 0.3;


//Max speed
move_y_max = 6;
move_x_max_final = 2;


//Dash variables
can_dash = true;
dash_distance = 64;
dash_time = 10;
dash_duration = 20;
dash_cooldown = 0;
dash_cool_x = 12;
dash_cool_y = 50;
dash_energy = 0;

//Stamina
stamina_timer = 120; //150/30 is 5 sec
stamina_can_regen = false;
use_stamina = false;


//HP variables
death_triggered = false;
flash = 0;
flash_shader = sh_white;


//Damage variables
invincible = false; 
invincibility_timer = 0;  
inviancibility_duration = 60;

can_attack = true;


if (global.target_x != -1) {
    x = global.target_y;
    y = global.target_x;
    direction = global.target_direction;
}

hit_by_attack = ds_list_create();