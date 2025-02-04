//misc
enemy_state = ENEMYSTATE.IDLE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))

    
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
is_dying = false;

//logic reals
follow_distance = 150;
evade_distance = 50;
attack_distance = 60;
enemy_attack_timer = 0;
attack_cooldown = 100;

//hp + damage
enemy_hp = 2;
enemy_damage = 2;
attack_initialized = 0;

