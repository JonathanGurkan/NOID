var heart_spawn = round(random_range(0,1))

if (!layer_exists("pickup")) {
	layer_create(0, "pickup");
}

if (heart_spawn == 1) {
	instance_create_layer(x, y - 7, "pickup", obj_heart);
}

repeat (floor(random_range(4,9))) {
	instance_create_layer(floor(random_range(x + 5, x - 5)), floor(random_range(y + 4, y - 4)) -10, "pickup", obj_score)
}