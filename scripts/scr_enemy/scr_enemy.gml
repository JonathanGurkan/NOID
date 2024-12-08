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
    
    
}

function  enemy_idle(){
    sprite_index = spr_flower_idle;
     
    if(found_player){
        enemy_state = ENEMYSTATE.WAKEUP;
    }
}

function  enemy_awaken(){
    sprite_index = spr_flower_acitvate;
    
    if(!found_player){
        enemy_state = ENEMYSTATE.IDLE;
    }
    if(follow_player){
    enemy_state = ENEMYSTATE.WALK;
    } 
}

function  enemy_movement(){
    if(follow_player && !is_diying && !attack){
        x += image_xscale * walk_speed;
        image_speed = 1;
        sprite_index = spr_flower_r;
    }else{
        enemy_state = ENEMYSTATE.WAKEUP;
    }
    if(attack){
        enemy_state = ENEMYSTATE.ATTACK;
    }
}

function enemy_attack(){
    sprite_index = spr_flower_attack;
    image_speed =1;
    
    mask_index = spr_flower_attack_hitbox
    
    var list = ds_list_create();
    var num = instance_place_list(x,y,obj_player,list,false)
    if(num > 0) show_debug_message("hit")
    ds_list_destroy(list)
    mask_index = spr_flower_idle;
    
    if(!attack){
        enemy_state = ENEMYSTATE.WALK;
    }
}


function enemy_death(){
    is_diying = true
    sprite_index = spr_flower_death;
    if(animation_end()){
        instance_destroy();
    }
    
    
}