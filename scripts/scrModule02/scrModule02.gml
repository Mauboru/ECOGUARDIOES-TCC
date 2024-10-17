globalvar area_x, area_width, jaPodeCriarNotas, speed_counter;

area_x = 106;
area_width = 306;
jaPodeCriarNotas = false;
speed_counter = 0;

function endGame() {
	instance_destroy(oNotes);
	audio_stop_all();
}