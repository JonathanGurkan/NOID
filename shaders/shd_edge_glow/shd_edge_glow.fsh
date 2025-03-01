varying vec2 v_texcoord;
uniform vec4 glow_color;   // RGBA color for glow
uniform float glow_strength; // Controls the glow intensity

void main() {
    // Distance to the closest screen edge
    float dist_x = min(v_texcoord.x, 1.0 - v_texcoord.x);
    float dist_y = min(v_texcoord.y, 1.0 - v_texcoord.y);
    float edge_dist = min(dist_x, dist_y);

    // Make the glow **stronger** at the edges by inverting the distance
    float glow = pow(smoothstep(0.3, 0.0, edge_dist), glow_strength);

    // Apply glow color
    gl_FragColor = glow_color * glow;
}
