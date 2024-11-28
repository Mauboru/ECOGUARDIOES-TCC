var destino_x = 96;
var destino_y = 320;
var pulo = 5;
var amplitude = 10;
var velocidade_onda = 0.06;

//Movimentação
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
	//Criando notas de dinheiro
    if (!pomboExiste) {
        pomboExiste = true;
        sprite_index = sClientePombo;

        var caixa = instance_create_layer(x + 130, y - 140, "UI", oCaixaDialogo);
        
        var precoPastel = 10;
        var precoCafe = 5;

        var pedidoUm = choose(1, 2, 3, 4, 5);
        var pedidoDois = choose(1, 2, 3, 4, 5);

        caixa.texto = "Eu quero " + string(pedidoUm) + "x pastéis e " + string(pedidoDois) + "x Cafés";

        valorPedido = (pedidoUm * precoPastel) + (pedidoDois * precoCafe);
        totalPagamento = 0;
        var nota_x = x + 170; 
        var nota_y = y + 90;

        while (totalPagamento < valorPedido) {
            var nota = choose(5, 10, 20, 50, 100);
            totalPagamento += nota;

            var pagamento = instance_create_layer(nota_x, nota_y, "Instances", oNotaDinheiro);
			
			pagamento.image_xscale = .8;
			pagamento.image_yscale = .8;
            
            if (nota == 100) {
                pagamento.sprite_index = sCem;
            } else if (nota == 50) {
                pagamento.sprite_index = sCinquenta;
            } else if (nota == 20) {
                pagamento.sprite_index = sVinte;
            } else if (nota == 10) {
                pagamento.sprite_index = sDez;
            } else if (nota == 5) {
                pagamento.sprite_index = sCinco;
            }

			troco = (abs(valorPedido - totalPagamento));
            nota_x += 30;
        }
    }
}

if (soma > troco) {
	print("VALEU TROUXA");
	saldo += totalPagamento;
	saldo_negativo += soma - troco;
	soma = 0;
	valorPedido = 0;
	instance_destroy(oCaixaDialogo);
	instance_destroy();
} else if (soma == troco) {
	print("VALEU AMIGO");
	saldo += totalPagamento;
	soma = 0;
	valorPedido = 0;
	instance_destroy(oCaixaDialogo);
	instance_destroy();
}

saldo_total = abs(saldo_negativo - saldo);