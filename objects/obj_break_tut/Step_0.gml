if(place_meeting(x+10,y+10,obj_player)){
    layer_destroy("falling_block");
    falling = true;
}

if(falling){
    screenshake(2,60)
    var grv_final = grv;
    var move_y_max_final = move_y_max;
    move_y += grv_final;
    move_y = clamp(move_y,-move_y_max_final,move_y_max_final);
    y += move_y;
}

if(y > 900){
    instance_destroy();
}

