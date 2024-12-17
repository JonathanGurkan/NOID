function enemy_logic(){
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
    
    //wakeup distance
    if (distance_to_p < wakeup_distance){
        found_player = true;
    } else { 
        found_player = false;
    }
    //follow distance
    if (distance_to_p < canwalk_distance){
            follow_player = true;
        } else { 
            follow_player = false;
        }
    
    if (distance_to_p < attack_distance){
            attack = true;
        } else { 
            attack = false;
        }

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
    if(found_player){
        enemy_state = ENEMYSTATE.WAKEUP;
    }
}

function  enemy_awaken(activate_sprite){
    sprite_index = activate_sprite;
	if(follow_player){
	enemy_state = ENEMYSTATE.WALK;
	}
    if(!found_player && !follow_player){
        enemy_state = ENEMYSTATE.IDLE;
    }
}

function  enemy_movement(move_sprite){
    if(follow_player && !is_diying && !attack){
		sprite_index = move_sprite;
        x += image_xscale * walk_speed;
        image_speed = 1;
    }else{
        enemy_state = ENEMYSTATE.WAKEUP;
    }
    if(attack){
        enemy_state = ENEMYSTATE.ATTACK;
    }

    
}

function enemy_attack(attack_sprite, attack_mask){
    sprite_index = attack_sprite;
    image_speed = 1;
    mask_index = attack_mask;
    
    var list = ds_list_create();
    var num = instance_place_list(x,y,obj_player,list,false)
    if(num > 0) show_debug_message("hit")
    ds_list_destroy(list)
    mask_index = image_index;
    
    if(!attack){
        enemy_state = ENEMYSTATE.WALK;
    }
}


function enemy_death(death_sprite, not_die){
    is_diying = true
    sprite_index = spr_flower_death;
    
    if(not_die == false){
    if(animation_end()){
        instance_destroy();
    }
    }
}
    
    
