globalvar area_x, area_width, jaPodeCriarNotas, speed_counter, terminouMusica, musicaModule02;

area_x = 106;
area_width = 306;
jaPodeCriarNotas = false;
speed_counter = 0;
terminouMusica = false;
musicaModule02 = snd_fandango;

function endGame() {
	instance_destroy(oNotes);
	audio_stop_all();
}

function reiniciarModulo2(){
	terminouMusica = false;
	jaPodeCriarNotas = false;
	pontos = 0;
}