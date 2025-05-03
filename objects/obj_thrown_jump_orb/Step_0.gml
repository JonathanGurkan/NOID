collision();
if(on_ground) instance_destroy();

in_jump_orb = place_meeting(x+1,y,obj_player);
var key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("Z"));


if(distance_to_object(obj_player) > 5){
thrown = true;
}
show_debug_message(distance_to_object(obj_player))

if (in_jump_orb) && (orb_time <= 0) && (key_jump) && (thrown) {
		with(obj_player){
			move_y = jump_speed;
			jumps = 2;
		}
        instance_destroy();
}