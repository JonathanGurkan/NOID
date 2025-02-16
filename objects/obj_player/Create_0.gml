state = PLAYERSTATE.FREE;
last_state = PLAYERSTATE.FREE;
collision_map = obj_collision;
pause_option = ["Continue","Controls","Toggle Fullscreen", "Main Menu", "Quit"];
pause_option_selected = 0;
death_option = ["Restart", "Main Menu", "Quit"];
death_option_selected = 0;
dist_to_wall = 0;

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
grv_onwall = 0.1;

//movement speeds
walk_speed = 2; // walking speed
jump_speed = -6; // jump strength
walk_acc = 0.4;
fric_ground_speed = 0.70;
fric_air_speed = 0.3;


//Max speed
walk_speed = 2;
run_speed = 3;
move_y_max = 4;
move_x_max_final = walk_speed;


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
stamina_timer = 120; //120/60 is 2 sec
stamina_can_regen = false;
use_stamina = false;

//wallclimb
wall_move_y_max = 2;
wall_speed_x = 10;
wall_speed_y = -10;
on_wall = 0;
walljump_delay = 0;
walljump_delay_max = -1;
on_jump_wall = 0;
dust = 0;

//HP variables
death_triggered = false;
flash = 0;
flash_shader = sh_white;


//Damage variables
invincible = false; 
invincibility_timer = 0;  
invincibility_duration = 60;
can_attack = true;
taking_damage = false;
hit_by_attack = ds_list_create();

if (global.target_x != -1) {
    x = global.target_y;
    y = global.target_x;
    direction = global.target_direction;
}

//cutscene variables
alpha = 0;
draw_text_cut = false;
transit = false;
wait = 0;
wait_time = 40;
init = false;