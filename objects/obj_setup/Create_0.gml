u_pos = shader_get_uniform(sh_lighting, "u_pos");
u_pos2 = shader_get_uniform(sh_shadow, "u_pos");
u_z = shader_get_uniform(sh_lighting,"u_z");
u_z2 = shader_get_uniform(sh_shadow,"u_z");

vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();
