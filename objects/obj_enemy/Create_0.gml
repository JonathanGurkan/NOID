enemy_state = ENEMYSTATE.IDLE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))
walk_speed = 1;
grv = 0.25;
move_y = 0;
move_x = 0;
move_y_max = 3;
found_player = false;
follow_player = false;
is_diying = false;
attack = false;
wakeup_distance =150;
canwalk_distance = 100;
attack_distance = 20;

