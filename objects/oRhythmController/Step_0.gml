if audio_is_playing(snd_fandango) and !instance_exists(oNotes) and !in_pause {
	instance_create_layer(462, 470, "UI", oNotes);
}