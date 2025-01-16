//misc
enemy_state = ENEMYSTATE.IDLE;
collision_map = layer_tilemap_get_id(layer_get_id("col"))
distance_to_p = distance_to_object(obj_player);
direction_p = point_direction(x,y,obj_player.x, obj_player.y);
attack_initialized = false;
    
//movement
walk_speed = 1.3;
move_y = 0;
move_y_max = 3;
move_x = 0;
grv = 0.25;
on_ground = false;

//logic bools
found_player = false;
follow_player = false;
dash_player = false;
shoot_player = false;
can_shoot = false;
is_dying = false;
dash_initialized = false;


//logic reals
found_distance = 100;
follow_distance = 70;
shoot_distance = 20;
dash_distance = 40;
evade_distance = 20;
shoot_cooldown = 100;
shoot_timer = 0;

//hp + damage
enemy_hp = 10;
