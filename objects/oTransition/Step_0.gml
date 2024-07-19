//Ja mudei de room
if (mudei){
	alpha -= .02;
}else{
	alpha += .02;
}

//Quando o alpha passar de 1 eu mudo de room
if (alpha >= 1){
	room_goto(destino);
}

//Me destruindo depois de transparente e mudado de room
if (mudei && alpha <= 0){
	instance_destroy();
}