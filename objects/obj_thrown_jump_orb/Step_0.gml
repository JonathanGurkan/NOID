collision();
if(on_ground) instance_destroy();

in_jump_orb = place_meeting(x+1,y,obj_player);
var key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("Z"));

if (in_jump_orb) && (orb_time <= 0) && (key_jump) {
		with(obj_player){
			move_y = jump_speed;
			jumps = 2;
		}
        instance_destroy();
}