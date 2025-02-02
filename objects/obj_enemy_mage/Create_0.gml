//misc
enemy_state = ENEMYSTATE.IDLE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))
image_speed =1;
    
//movement
walk_speed = 1;
move_y = 0;
move_y_max = 3;
move_x = 0;
grv = 0.25;
on_ground = false;

//logic booleans
follow_player = false;
evade_player = false;
attack_player = false;
shoot_player = false;
is_dying = false;
can_shoot = false;
attack_initialized = false;

//logic reals
follow_distance = 100;
evade_distance = 50;
attack_distance = 20;
shoot_distance = 60;
enemy_attack_timer = 0;
attack_cooldown = 100;
shoot_timer = 0;
shoot_cooldown = 200;
dash_timer = 0;
dash_cooldown = 20;

//hp + damage
enemy_hp = 4;


