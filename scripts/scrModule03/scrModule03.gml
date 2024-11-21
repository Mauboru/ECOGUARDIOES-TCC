globalvar terminouMusica, musicaModule03, soma, saldo_total, saldo_negativo, saldo;

musicaModule03 = snd_modulo3;
terminouMusica = false;
soma = 0;
saldo_total = 0;
saldo_negativo = 0;
saldo = 500;

function endGameModule3() {
	audio_stop_all();
}

function reiniciarModulo3(){
	pontos = 0;
}