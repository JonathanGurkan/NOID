attribute vec2 in_Position;
attribute vec2 in_TextureCoord;
varying vec2 v_texcoord;

void main() {
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 0.0, 1.0);
    v_texcoord = in_TextureCoord;
}
