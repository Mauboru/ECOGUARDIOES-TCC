globalvar in_pause, k_accept, k_confirm, music_volume;

in_pause = false;
k_accept = mb_left;
k_confirm = mb_right;
music_volume = 1;

function fn_cutscene_sequence(_seq){	
	var _tar_layer = "UI";
	var _lixeira = instance_find(oTrash,0);
	var  _lixo = instance_find(oResidues,0);
	var _sequencia = layer_sequence_create(_tar_layer, room_width * 0.5, room_height * 0.5, _seq);
	var _seq_instancia = layer_sequence_get_instance(_sequencia);

	sequence_instance_override_object(_seq_instancia, oTrash, _lixeira); 
	sequence_instance_override_object(_seq_instancia, oResidues, _lixo);
}

function fn_bonus_sequence(_seq){
	var _tar_layer = "UI"
	var _lixeira = instance_find(oExit,0);
	var  _lixo = instance_find(oResume,0);
	var _sequencia = layer_sequence_create(_tar_layer, room_width * 0.5, room_height * 0.5, _seq);
	var _seq_instancia = layer_sequence_get_instance(_sequencia);
	
	sequence_instance_override_object(_seq_instancia, oExit, _lixeira); 
	sequence_instance_override_object(_seq_instancia, oResume,  _lixo); 
}

function fnVolume(){
    music_volume = !music_volume;
}

function fnExit() {
    game_end();
}