function screenshake(strngth, lgth){
    with (global.i_camera){
        if (strngth > shake_remain){
            shake_magnitude = strngth;
            shake_remain = shake_magnitude;
            shake_length = lgth;
        }
    }
}