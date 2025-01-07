if (invincible != 0) && ((invincible mod 16 < 4 ) == 0) && (flash == 0) {
    
} else {
    draw_sprite_ext(sprite_index, image_index, x, y-z, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    draw_self();
}