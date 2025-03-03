/// @description Flicker
var flicker = random_range(-0.01, 0.01); // random var

x_radius += flicker;
y_radius += flicker;

x_radius = clamp(x_radius, 0.06, 0.54); // clamp = keep value between 0.06 & 1.04
y_radius = clamp(y_radius, 0.06, 0.54);