function new_textbox(){
    var _obj;
    if (instance_exists(obj_text)) _obj = obj_text_queue; else _obj = obj_text;
    with (instance_create_layer(0, 0, "instances", _obj)) {
        message = argument[0];
        if (instance_exists(other)) origin_instance = other.id; else origin_instance = noone;
        if (argument_count > 1) background = argument[1]; else background = 1;
    }
    with (obj_player) {
        if (state != do_nothing) {
            last_state = state;
            state = do_nothing;
        }
    }
    
}