//Init + Globals
game_paused_image_speed = image_speed;
randomize();

global.gamepaused = false;
global.text_speed = .75;
global.target_room = -1;
global.target_x = -1;
global.target_y = -1;
global.target_direction = -1;
global.player_max_health = 100;
global.player_max_stamina = 100;
global.player_health = global.player_max_health;
global.player_stamina = global.player_max_stamina;
global.i_camera = instance_create_layer(0,0,layer,obj_camera);
global.cutscene = -1;


//surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);

//debug or testing 
room_toggle = false;