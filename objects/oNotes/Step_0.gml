y += speed;

if y > room_height - 150 instance_destroy();
if !audio_is_playing(musicaModule02) instance_destroy();