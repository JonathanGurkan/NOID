function screenshake(time, magnitude, fade) {
   with (obj_camera) {
      shake_time = time;
      shake_magnitude = magnitude;
      shake_fade = fade;
	  shake = true;
   }
}