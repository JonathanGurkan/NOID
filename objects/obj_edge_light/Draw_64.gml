if (surface_exists(light_surf)) {
    
    surface_set_target(light_surf); // Set the surface to draw on
    draw_clear(c_black); // Clear background

    with (obj_lightsource) {
        gpu_set_blendmode(bm_subtract);
        draw_sprite_ext(spr_light_gradient, 0, obj_player.x, obj_player.y, x_radius, y_radius, 0, c_black, 1);
        gpu_set_blendmode(bm_zero);
        draw_sprite_ext(spr_light_gradient, 0, obj_player.x, obj_player.y, x_radius, y_radius, 0, c_orange, 0.7);
        gpu_set_blendmode(bm_normal);
    }

    surface_reset_target(); 

    // Draw surface at camera position to align with view
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
	show_debug_message(string(cam_x)+" "+ string(x) + "   " + string(cam_y)+" "+ string(y))
    draw_surface_ext(light_surf, cam_x * 4, cam_y * 4, 1, 1, 0, c_white, 1);
    
} else {
    light_surf = surface_create(room_width, room_height);
}

