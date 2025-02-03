function screenshake(strength, length) {
    with (global.i_camera) {
        if (strength > shake_remain) {
            shake_magnitude = strength;
            shake_remain = shake_magnitude;
            shake_length = length;
        }
    }
}