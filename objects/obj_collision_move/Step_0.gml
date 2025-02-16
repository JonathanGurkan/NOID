show_debug_message(" | axis: " + string(axis))


if(axis == "x"){
if (x > first_x + move_amount) move_dir = -1;
if (x < first_x) move_dir = 1;
x += move_dir * move_speed;
}

if(axis == "y"){
if (y > first_y + move_amount) move_dir = -1;
if (y < first_y) move_dir = 1;
y += move_dir * move_speed;
}


var below = 1;
if (y < obj_player.y){
	below = -1;
} else {
	below = 1;
}
with (obj_player) {
    if place_meeting(x,y+(2 * below),obj_collision_move) {
          x+=obj_collision_move.x-obj_collision_move.xprevious
          y+=obj_collision_move.y-obj_collision_move.yprevious
    }
}
