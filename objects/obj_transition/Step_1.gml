with (obj_player) state = scr_p_transition;

if (leading == OUT) {
    percent = min(1, percent + transition_speed);
    with (obj_player) state = scr_p_transition();
    if (percent >= 1) {
        room_goto(target);
        leading = IN;
    }
} else { 
    if (instance_exists(obj_player)){
       with (obj_camera){
           x = obj_player.x;
           y = obj_player.y;
       }
    }
    percent = max(0, percent - transition_speed);
    if (percent <= 0) { // If screen fully revealed
        with (obj_player) state = PLAYERSTATE.FREE;
        instance_destroy();
    }
}