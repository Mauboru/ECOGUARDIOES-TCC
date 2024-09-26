globalvar area_x, area_width;

area_x = 106;
area_width = 306;

function endGame() {
	instance_destroy(oNotes);
	audio_stop_all();
}