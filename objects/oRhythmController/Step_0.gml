if audio_is_playing(snd_fandango) and !instance_exists(oNotes) {
	instance_create_layer(room_width + 32, room_height/2 - 32, "UI", oNotes);
}