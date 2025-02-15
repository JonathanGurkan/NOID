draw_self();
var distance_to_p = distance_to_object(obj_player);
var enemy_count = instance_number(par_enemy);
if (distance_to_p < 20){
        draw_set_font(f_button_text);
        draw_set_color(c_white)
    
       if (instance_exists(obj_player)) draw_text_transformed(obj_player.x+10,obj_player.y-30, "Press E",0.2,0.2,0);
}