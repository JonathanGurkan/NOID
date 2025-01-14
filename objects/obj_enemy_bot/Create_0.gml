//misc
enemy_state = ENEMYSTATE.IDLE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))
distance_to_p = distance_to_object(obj_player);
direction_p = point_direction(x,y,obj_player.x, obj_player.y);
    
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
found_distance = 200;
follow_distance = 150;
evade_distance = 50;
attack_distance = 60;
enemy_attack_timer = 0;
attack_cooldown = 100;

//hp + damage
enemy_hp = 1;
