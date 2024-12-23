// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_parallax(){
    var cam_y = camera_get_view_y(view_camera[0]);
    layer_y("Backgrounds_2",cam_y * 0.8);
}