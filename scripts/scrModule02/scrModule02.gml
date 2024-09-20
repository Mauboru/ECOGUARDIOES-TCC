//globalvar background, background_tutorial;

//background = layer_background_get_id("Backgrounds");
//background_tutorial = layer_background_get_id("Tutorial");

function verifyPoints(_x) {
	if _x > 200 and _x < 250 return "Perfeito";
	else if (_x > 180 and _x < 200) || (_x > 250 and _x < 270) return "Boa";
	else return "Ruim";
}

function endGame() {
	//layer_background_visible(background_tutorial, true);
	//layer_background_change(background, sBkMandicueraBlur);
	instance_destroy(oNotes);
	audio_stop_all();
}