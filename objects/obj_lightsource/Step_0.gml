/// @description Flicker
var flicker = random_range(-0.01, 0.01); // random var

x_radious += flicker;
y_radious += flicker;

x_radious = clamp(x_radious, 0.06, 0.54); // clamp = keep value between 0.06 & 1.04
y_radious = clamp(y_radious, 0.06, 0.54);