var qtd_existing = instance_number(oResidues);
var instances_add = qtd_lixo - qtd_existing;

if (instances_add > 0) {
	if alarm[0] == -1 alarm[0] = irandom_range(min_time_add, max_time_add);
}

if !in_pause {
	x += lengthdir_x(speed, direction);
	y += lengthdir_y(speed, direction);

	if (x + tam_sprite <= 0 || x + tam_sprite >= room_width) {
		limite--;
	    direction = 180 - direction;
		image_xscale *= -1;
	}

	if (limite <= 0) instance_destroy();

	y += amplitude * sin(frequency * time);
	y = clamp(y, initial_y - amplitude, initial_y + amplitude);
}