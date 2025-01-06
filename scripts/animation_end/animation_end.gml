function animation_end() {
	var _sprite = sprite_index;
    var _image = image_index; 
    var _type = sprite_get_speed_type(sprite_index);
    var _spd = sprite_get_speed(sprite_index)*image_speed;
    if(_type == spritespeed_framespersecond)
        _spd = _spd/game_get_speed(gamespeed_fps);
    return _image+_spd >= sprite_get_number(_sprite);
}