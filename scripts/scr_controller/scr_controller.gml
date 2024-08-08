globalvar timer, timerMax, timer_vel, wave, pontos, aparecer, intervalWave, stopAlarm, countSequence, 
sucess, fails, stopSoundAlarm, specialEvent;

timerMax = 30;
timer = timerMax;
timer_vel = .02;
wave = 3;
pontos = 0;
aparecer = false;
intervalWave = false;
stopAlarm = false;
countSequence = 0;
sucess = 0;
fails = 0;
stopSoundAlarm = false;
specialEvent = false;

function verifySequence(value){
	if value == "acertou" {
		sucess++
		fails = 0
	}
	else {
		fails++
		sucess = 0
	}
	
	if sucess > 3 or fails > 3 stopSoundAlarm = true;
	else stopSoundAlarm = false;
}

function intervalBetweenWaves(){	
	wave += 1;
	timer = timerMax;
	intervalWave = true;
	
	if wave == 3 specialEvent = true;
	
	if wave == 4 {
		wave = 1;
		room_goto(rm_fim_de_jogo);
	}
	
	instance_create_layer(x, y, "Instances", oWaveTimer);
}

function drawing(_font,  _color, _valign, _halign, _x, _y, _text){
	draw_set_font(_font);
	draw_set_valign(_valign);
	draw_set_halign(_halign);
	draw_set_color(_color)
	draw_text(_x, _y, _text);
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_color(-1)
}

function transition(_room){
	if (!instance_exists(oTransition)){
		var _tran = instance_create_layer(0, 0, "Transitions", oTransition);
		_tran.destino = _room;
	}
}
	
function print(text){
	show_debug_message(string(text));
}