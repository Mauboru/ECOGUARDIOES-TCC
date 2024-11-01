if (!showing_dialog) {
	if (dialog.count() <= 0) {
		instance_destroy();
		transition(destino);
		return;
	}
	current_dialog = dialog.pop();
	showing_dialog = true;
	index = 0;
	mostrar_dialogo = false;
	audio_play_sound(current_dialog.audio, 1, 0);
} else {
	if (!audio_is_playing(current_dialog.audio) || keyboard_check_pressed(vk_space)){
		showing_dialog = false;
		audio_stop_sound(current_dialog.audio)
	}
	
	if (!mostrar_dialogo){
		index += .4;
	} else {
		index = string_length(string(current_dialog.text));
	}
}