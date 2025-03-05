if (distance_to_p < 50){
        draw_set_font(f_button_text);
        draw_set_color(c_white)
    if(instance_exists(obj_player)){
	  if (!trigger){
		   draw_text_transformed(obj_player.x+10,obj_player.y-30, "Press E to save",0.2,0.2,0);
	   } else {
			 draw_text_transformed(obj_player.x+10,obj_player.y-30, "Saved!",0.2,0.2,0);
	   }
	}
}
