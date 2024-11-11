var destino_x = 96;
var destino_y = 320;
var pulo = 5;
var amplitude = 10;
var velocidade_onda = 0.06;

if (x != destino_x) {
    if (x < destino_x) {
        x += pulo;
    } else if (x > destino_x) {
        x -= pulo;
    }
    
    if (abs(x - destino_x) < pulo) {
        x = destino_x;
    }

    y = destino_y + amplitude * sin(velocidade_onda * x);
} else {
    sprite_index = sClientePombo;
	//remover os insatcens mas n permitir q crie varios
	if !instance_exists(oCaixaDialogo) var pedido = instance_create_layer(x + 130, y - 140, "UI", oCaixaDialogo);
	if !instance_exists(oNotaDinheiro) var pagamento = instance_create_layer(x + choose(250, 200, 275), y + 90, "Instances", oNotaDinheiro);

	pedido.texto = "testando"; // aqui sera definido randomicamente os pedidos
	pagamento.sprite_index = sVinte;
	pagamento.image_angle = 90;
}

if keyboard_check_pressed(vk_up) instance_destroy();