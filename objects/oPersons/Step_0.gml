if in_pause {
	speed = 0;
	image_speed = 0;
	exit;
}else{
	speed = random_range(.8, 1.2);
	image_speed = 3;
}

if room_get_name(room) != "rm_jogo" instance_destroy()

//Caso foi pausado ele retorna a jogar lixo
var _quantidade_desejada = 20;
var _quantidade_existente = instance_number(oResidues);
var _instancias_a_adicionar = _quantidade_desejada - _quantidade_existente;
_instancias_a_adicionar = min(_instancias_a_adicionar, 2);
    
// Cria as instâncias necessárias
if (_instancias_a_adicionar > 0) {
	repeat(_instancias_a_adicionar) {
	    alarm[0] = irandom_range(0, 300);
	}
}

x += lengthdir_x(speed, direction); // Movimentação horizontal
y += lengthdir_y(speed, direction); // Movimentação vertical

// Verificar se o objeto atingiu a borda direita ou esquerda
if (x + sprite_width <= 0 || x + sprite_width >= room_width) {
	limite--;
    direction = 180 - direction;
	image_xscale *= -1;
}

if (limite <= 0) instance_destroy();

time += 1; // Atualiza a variável de tempo

// Calcula a posição vertical usando uma função senoidal
y += amplitude * sin(frequency * time);

// Restringe a amplitude para evitar movimentos extremos
y = clamp(y, initial_y - amplitude, initial_y + amplitude);

//este