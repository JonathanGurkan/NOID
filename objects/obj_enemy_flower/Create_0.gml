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

//logic bools
found_player = false;
follow_player = false;
attack_player = false;
is_diying = false;
evade_player = false;

//logic reals
found_distance =100;
follow_distance = 90;
attack_distance = 10;
evade_distance = 0;

//hp + damage
enemy_hp = 2;

attack_initialized = false;