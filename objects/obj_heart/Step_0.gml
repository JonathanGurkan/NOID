if (timer > 0) {
	timer--;
}

if (timer <= 0) {
	up = !up;
	timer = 60;
}

if (up) {
	y = lerp(y, y - 2, 0.02);
} else {
	y = lerp(y, y + 2, 0.02);
}
