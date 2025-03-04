obj_camera.follow = obj_player;

if(obj_game.room_toggle){
    obj_player.x = 32;
    obj_player.y = 160;
}

audio_play_sound(snd_main,0,1);