cam = view_camera[0]; 
follow = obj_player;
view_width_half = camera_get_view_width(cam) * 0.5;
view_height_half = camera_get_view_height(cam) * 0.7;
x_to = xstart;
y_to = ystart;
x_min = 0
y_min = 0
follow_obj_x = 0;
follow_obj_y = 0;
cutscene = false;
room_init = false;

//Screen shake
shake = false;
shake_time = 0;
shake_magnitude = 0;
shake_fade = 0.25;
