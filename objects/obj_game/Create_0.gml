//Init + Globals
game_paused_image_speed = image_speed;
randomize();

global.gamepaused = false;
global.text_speed = .75;
global.i_camera = instance_create_layer(0,0,layer,obj_camera);


surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

room_goto(ROOM_START);
