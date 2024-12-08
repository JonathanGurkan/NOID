function enemy_logic(){
    distance_to_p = distance_to_object(obj_player);
    direction_p = point_direction(x,y,obj_player.x, obj_player.y);
    
    if (distance_to_p < 100){
        found_player = true;
    }else{
        found_player = false;
    }


}

function  enemy_movement(){
    
}

function  enemy_awaken(){
    sprite_index = flower_acitvate
    
    if(!found_player){
        enemy_state = ENEMYSTATE.IDLE;
    }
}

function  enemy_idle(){
    sprite_index = flower_static_idle;
    
    if(found_player){
            enemy_state = ENEMYSTATE.WAKEUP;
        }
}

function enemy_death(){
    
    
}