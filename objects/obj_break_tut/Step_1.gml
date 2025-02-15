if(place_meeting(x,y-1,obj_player)){
    screenshake(20,0.5,0.5);
    with(obj_player) move_x_max_final = walk_speed;
 } 

if(place_meeting(x,y,obj_player)){
    layer_destroy("falling_block");
    falling = true;
}



if(falling){
    screenshake(20,2,0.7);
    var grv_final = grv;
    var move_y_max_final = move_y_max;
    move_y += grv_final;
    move_y = clamp(move_y,-move_y_max_final,move_y_max_final);
    y += move_y;
}

if(y > 900){
    instance_destroy();
}

