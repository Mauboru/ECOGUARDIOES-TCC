if !isTroco exit;

if (isTroco and segurado) {
    var alvo = instance_nearest(x, y, oClientePombo);
    if (alvo != noone and place_meeting(x, y, alvo)) {
		segurado = false;
		x = x_antigo;
		y = y_antigo;
		somou = false;
		depth = 200;
		
		soma += valor;
    }
}

segurado = false;
x = x_antigo;
y = y_antigo;
somou = false;
depth = 200;

print("total: " + string(oClientePombo.valorPedido));
print("pago: " + string(oClientePombo.totalPagamento));
print("troco: " + string(oClientePombo.valorPedido - oClientePombo.totalPagamento));
print("soma: " + string(soma));