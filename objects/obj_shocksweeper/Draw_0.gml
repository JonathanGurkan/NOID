var draw = false
if (obj_boss.boss_state = BOSSSTATE.CUTSCENE) draw = true;
if (draw) draw_self();


if (hitflash && draw) {
    shader_set(sh_damage_e); // Apply the damage shader
    draw_self();
    shader_reset(); // Reset shader
}  else {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}