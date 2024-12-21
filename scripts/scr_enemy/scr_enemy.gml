function enemy_logic(){
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
    
    //wakeup
    if (distance_to_p < found_distance){
        found_player = true;
        } else { 
        found_player = false;
        }
    
    //follow
    if (distance_to_p < follow_distance){
            follow_player = true;
        } else { 
            follow_player = false;
        }
    
    //player too close
    if (distance_to_p < evade_distance && !attack_player){
            evade_player = true;
        }
    if (distance_to_p > 50){
            evade_player = false;
        }
    
    //attack range
    if (distance_to_p < attack_distance){
            attack_player = true;
        } else { 
            attack_player = false;
        }
    
    //dir to player
    if (direction_p > 90) {
        direction = -1
        image_xscale = -1
        } else {
        direction = 1;
        image_xscale = 1;
        }
	
	if(enemy_hp <= 0){
        enemy_state = ENEMYSTATE.DEATH;
    }
 
}

function  enemy_idle(idle_sprite){
	sprite_index = idle_sprite;
    
    if(found_player) enemy_state = ENEMYSTATE.ALERT;
    
}

function  enemy_alerted(activate_sprite){
    sprite_index = activate_sprite;
    
	if(follow_player) enemy_state = ENEMYSTATE.MOVE;
    if(!found_player && !follow_player) enemy_state = ENEMYSTATE.IDLE;
    
}

function  enemy_movement(move_sprite){ 
    sprite_index = move_sprite;
    x += image_xscale * walk_speed;
    image_speed = 1;
    
    if(evade_player) enemy_state = ENEMYSTATE.EVADE; 
    if(attack_player) enemy_state = ENEMYSTATE.ATTACK;
    if(!follow_player) enemy_state = ENEMYSTATE.ALERT;
}

function  enemy_evade(move_sprite){
    sprite_index = move_sprite;
    x -= image_xscale * walk_speed;
    image_speed = 1;
    
    
    if(attack_player){
         enemy_state = ENEMYSTATE.ATTACK;
    }
        if(!evade_player) enemy_state = ENEMYSTATE.MOVE;
}

function enemy_death(death_sprite, not_die){
    is_diying = true
    sprite_index = death_sprite;
    
    if(not_die == false){
        if(animation_end()){
        instance_destroy();
        }
    }
}
    
    
