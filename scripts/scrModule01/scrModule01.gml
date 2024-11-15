globalvar timer, timerMax, timer_vel, wave, pontos, intervalWave, stopAlarm, countSequence,
sucess, fails, stopSoundAlarm, initTruckInGame, addMoreResidues, stopCreateEnemy, sceneIsNow, isShowingSpriteCutscene;

pontos = 0;
sucess = 0;
fails = 0;

wave = 0;
intervalWave = false;

stopAlarm = false;
stopSoundAlarm = false;

//Nao sei onde to usando isso mais
countSequence = 0;
isShowingSpriteCutscene = false;

timer_vel = .02;
timerMax = 45;
timer = timerMax;

stopCreateEnemy = false;
initTruckInGame = false;
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

function reiniciarModulo1(){
	stopCreateEnemy = false;
	initTruckInGame = false;
	intervalWave = false;
	timer = timerMax;
	wave = 1;
	pontos = 0;
	addMoreResidues = false;
}