y += speed;

var stats = instance_exists(oStats);

if (y > room_height) {
	stats.image_index = 2;
	pontos -= 5;
	instance_destroy();
}

if !audio_is_playing(musicaModule02) instance_destroy();