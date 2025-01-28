with (obj_player) state = scr_p_transition;
with (obj_camera){

}

if (leading == OUT) {
    percent = min(1, percent + TRANSITION_SPEED);
    with (obj_player) state = scr_p_transition();
    if (percent >= 1) { // If screen fully obscured
        room_goto(target);
        leading = IN;
    }
} else { // leading == in
    percent = max(0, percent - TRANSITION_SPEED);
    if (percent <= 0) { // If screen fully revealed
        with (obj_player) state = PLAYERSTATE.FREE;
        instance_destroy();
    }
}

