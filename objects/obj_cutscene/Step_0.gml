if (instance_exists(obj_player) && (place_meeting(x,y,obj_player))) {
    global.cutscene = scene_name;
    with (obj_player) state = global.cutscene;
}
