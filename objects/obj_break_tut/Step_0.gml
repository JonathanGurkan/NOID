if(place_meeting(x,y,obj_player)){
    falling = true;
}

if(falling){
    screenshake(0.5,30)
    var grv_final = grv;
    var move_y_max_final = move_y_max;
    move_y += grv_final;
    move_y = clamp(move_y,-move_y_max_final,move_y_max_final);
    y += move_y;
}

if(y > 750){
    instance_destroy();
}