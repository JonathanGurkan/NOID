//misc
enemy_state = ENEMYSTATE.IDLE;
collision_map = obj_collision;
distance_to_p = distance_to_object(obj_player);
direction_p = point_direction(x,y,obj_player.x, obj_player.y);

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
is_dying = false;
evade_player = false;

//logic reals
found_distance = 150;
follow_distance = 100;
attack_distance = 2;
evade_distance = 0;

//hp + damage
enemy_hp = 2;
hitflash = false;
hitflash_timer = 10;
hitflash_countdown = 0;
attack_initialized = false;
was_activated = false;