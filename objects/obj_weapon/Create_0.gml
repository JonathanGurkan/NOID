/// @description Insert description here

target = noone;
firing_delay = 0;
is_being_carried = false;

popup_radius = 50;
interaction_object = instance_create_layer(x, y - 26, layer, obj_interact);
interaction_object.visible = false;


// change between children of obj.weapon
firing_speed = 5;
offset_y = 15;
offset_x = 10;