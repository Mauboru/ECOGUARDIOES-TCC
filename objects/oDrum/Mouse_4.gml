audio_play_sound(snd_drum, 1, 0);
image_xscale = 1.2;
image_yscale = 1.2;
alarm[0] = 10;

var _verify = verifyPoints(oNotes.x); //Isso aqui tem que ser verificado dentro do objeto nota
var _points = instance_create_layer(room_width/2, room_height/2, "UI", oStats);

if _verify == "Perfeito" {
	pontos += 10;
	_points.image_index = 0;
} else if _verify == "Boa" {
	pontos += 5;
	_points.image_index = 1;
} else {
	pontos -= 10;
	_points.image_index = 2;
}

instance_destroy(oNotes);