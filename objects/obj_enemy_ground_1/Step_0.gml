/// @description Insert your description here

if (x < obj_player.x) {
    moveX = 1;
    x = x + moveX
}  
    
if (x > obj_player.x) {
    moveX = - 1;
    x = x + moveX
}  

if (!place_meeting(x, y, obj_platform_tile_1)) {
    do {
        y = y  1
    } until 
        place_meeting(x, y, obj_platform_tile_1)
}