boss_state = BOSSSTATE.IDLE;
bossfight_started = false;
timer_before_attackswitch = 50;
what_attack = -1;
init = false;
can_attack = true;
attack_array = [1,2,3];
random_pick = 0; 
boss_over = false;

//camchange
cam = view_camera[0];
last_cam_h = camera_get_view_height(cam);
last_cam_w = camera_get_view_width(cam);
move_cam_finished = false;
spd = 0;
change_spd = 0.01;
move_cam = false;
view_w = 320;
view_h = 180;
times_changed = 0;
view_change = 0;