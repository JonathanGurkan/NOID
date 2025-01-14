if(room = r_main_menu){
    instance_destroy(obj_player)
    room_init = true;
    if(room_init){
         camera_set_view_pos(cam,0,0);
        room_init = false;
    }
    
    camera_set_view_pos(cam,x,y);
    x = lerp(x,x+50,0.08);
} else {
if (instance_exists(follow)) { 
    x_to = follow.x; 
    y_to = follow.y;
}

x += (x_to - x) /15;
y += (y_to - y) /15;

x = clamp(x, view_width_half, room_width-view_width_half);
y = clamp(y, view_height_half, room_height-view_height_half);

x += random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)

shake_remain = max(0, shake_remain - ((1/shake_lenght) * shake_magnitude));

camera_set_view_pos(cam,x - view_width_half,y - view_height_half);
}
