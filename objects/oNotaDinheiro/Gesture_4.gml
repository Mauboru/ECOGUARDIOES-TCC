if (!isTroco) exit;

if (isTroco and segurado) {
    var alvo = instance_nearest(x, y, oClientePombo);
    if (alvo != noone and place_meeting(x, y, alvo)) {
        segurado = false;
        x = x_antigo;
        y = y_antigo;
        somou = false;
        depth = 200;

        soma += valor;

		if (alvo.pomboExiste) {
	        if (!alvo.notasCriadas) alvo.notasCriadas = 0;
	        var offset = alvo.notasCriadas * 16; 

	        var dinheiro_dado = instance_create_layer(alvo.x + offset, alvo.y, "Instances", oNotaDinheiro);
	        verificaValorDaNota(valor, dinheiro_dado);
	        dinheiro_dado.image_xscale = .5;
	        dinheiro_dado.image_yscale = .5;
	        dinheiro_dado.depth = -y;

	        alvo.notasCriadas++;
		}
    }
}

segurado = false;
x = x_antigo;
y = y_antigo;
somou = false;
depth = 200;
