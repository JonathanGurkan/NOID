if (type == TRANS_TYPE.FADE) {
    transition_speed = 0.04;
	if (room != r_main_menu) {
    draw_set_alpha(1 * percent);
    draw_set_color(c_black);
    draw_rectangle(x,y,width,height,false);
    draw_set_alpha(1);
	}
}
