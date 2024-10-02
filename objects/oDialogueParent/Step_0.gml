if (showing_dialog == false) {
	if (dialog.count() <= 0) {
		instance_destroy();
		transition(rmModule1);
		return;
	}
	current_dialog = dialog.pop();
	showing_dialog = true;
	audio_play_sound(current_dialog.audio, 1, 0);
} else {
	if (!audio_is_playing(current_dialog.audio) || keyboard_check_pressed(vk_space)){
		showing_dialog = false;
		audio_stop_sound(current_dialog.audio)
	}
}

index += .18;