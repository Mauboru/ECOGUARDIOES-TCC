globalvar timer, timerMax, timer_vel, wave, pontos, intervalWave, stopAlarm, countSequence,
sucess, fails, stopSoundAlarm, initTruckInGame, addMoreResidues, stopCreateEnemy, sceneIsNow, isShowingSpriteCutscene;

pontos = 0;
intervalWave = false;
stopAlarm = false;
countSequence = 0;
sucess = 0;
fails = 0;
stopSoundAlarm = false;

timer_vel = .01;
isShowingSpriteCutscene = false;
sceneIsNow = 1;
stopCreateEnemy = false;
initTruckInGame = false;
timerMax = 20;
timer = timerMax;
wave = 0;
addMoreResidues = false;

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
	stopCreateEnemy = false;

	if wave == 3 initTruckInGame = true;
	if wave == 5 addMoreResidues = true;
	
	if wave != 1 instance_create_layer(x, y, "Instances", oWaveTimer);
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