draw_self();
var distance_to_p = distance_to_object(obj_player);
if (distance_to_p < 10){
        draw_set_font(f_button_text);
        draw_set_color(c_white)
		if(needs_key && !global.got_key) draw_text_transformed(obj_player.x+10,obj_player.y-40, "NEED KEY",0.2,0.2,0);
       if (instance_exists(obj_player) && !is_open) draw_text_transformed(obj_player.x+10,obj_player.y-30, "Press E to open",0.2,0.2,0);
}