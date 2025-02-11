gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_depth(-1000);

if (type == TRANS_TYPE.FADE) {
    transition_speed = 0.04;
	if (room != r_main_menu) {
    draw_set_alpha(1 * percent);
    draw_set_color(c_black);
    draw_rectangle(x,y,width,height,false);
    draw_set_alpha(1);
	}
}

if (type == TRANS_TYPE.CUTSCENE_FADE) {
    transition_speed = 0.01;
    if (room != r_main_menu) {
    draw_set_alpha(1 * percent);
    draw_set_color(c_black);
    draw_rectangle(x,y,width,height,false);
    draw_set_alpha(1);
    }
	
}

gpu_set_zwriteenable(false);
gpu_set_ztestenable(false);
