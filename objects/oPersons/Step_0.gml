if in_pause {
	speed = 0;
	image_speed = 0;
	exit;
}else{
	speed = random_range(.8, 1.2);
	image_speed = 3;
}

if room_get_name(room) != "rm_jogo" instance_destroy()

var _quantidade_existente = instance_number(oResidues);
var _instancias_a_adicionar = qtd_lixo - _quantidade_existente;
_instancias_a_adicionar = min(_instancias_a_adicionar, 2);

if (_instancias_a_adicionar > 0) {
	repeat(_instancias_a_adicionar) {
	    alarm[0] = irandom_range(min_time_add, max_time_add);
	}
}

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