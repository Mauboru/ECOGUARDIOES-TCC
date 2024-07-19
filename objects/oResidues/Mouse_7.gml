clicado = false;

var _inst_lixeira = instance_position(x, y, oTrash);

if (_inst_lixeira != noone && _inst_lixeira.destacado && tipo == _inst_lixeira.tipo) {
	pontos += 10;
	oHudGuara.image_index = 1;
	verifySequence("acertou");
	if stopSoundAlarm == false audio_play_sound(snd_fx_open, 0, 0)
	
    instance_destroy();
} else {
    if (x < 0 || x > room_width || y > oLimit.y) {
		phy_position_x = x_anterior;
        phy_position_y = y_anterior;
    }
}

if(_inst_lixeira != noone && _inst_lixeira.destacado && tipo != _inst_lixeira.tipo){
	instance_create_layer(x, y, "Instances", oScreenshake);
	pontos -= 2;
	oHudGuara.image_index = 2;
	verifySequence("errou");
	if stopSoundAlarm == false audio_play_sound(snd_fx_close, 0, 0)
}