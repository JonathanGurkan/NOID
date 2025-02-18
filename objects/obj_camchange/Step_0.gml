if (place_meeting(x, y, obj_player)) {
    if (times_changed == 0 || global.last_interacted_id != id) {
        move_cam = true;
        times_changed = 0;
        global.last_interacted_id = id;
    }
}

if (move_cam){
	spd += change_spd;
	view_h = lerp(last_cam_h,last_cam_h+view_change*0.5625,spd);
	view_w = lerp(last_cam_w,last_cam_w+view_change,spd)
	camera_set_view_size(cam,view_w,view_h);
} else {
	last_cam_h = camera_get_view_height(cam);
	last_cam_w = camera_get_view_width(cam);
}
if(floor(spd) >= 1){
	if (times_changed == 0) {
	    if (camera_get_view_width(cam) < last_cam_w) {
	        times_changed = 1; 
	    } else if (camera_get_view_width(cam) > last_cam_w) {
	        times_changed = -1; 
	    }
	}
	spd = 0
	move_cam = false;
}


show_debug_message(string(global.last_interacted_id) + "   " + string(times_changed))
