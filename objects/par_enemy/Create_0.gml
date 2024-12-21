//misc
enemy_state = ENEMYSTATE.IDLE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))

//movement
walk_speed = 0;
move_y = 0;
move_y_max = 3;
move_x = 0;
grv = 0.25;
on_ground = false;

//logic bools
found_player = false;
follow_player = false;
evade_player = false;
attack_player = false;
is_diying = false;

//logic reals
found_distance = 0;
follow_distance = 0;
evade_distance = 0;
attack_distance = 0;
enemy_attack_timer = 0;
attack_cooldown = 0;

//hp + damage
enemy_hp = 1;