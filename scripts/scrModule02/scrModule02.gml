globalvar area_x, area_width;

area_x = 106;
area_width = 306;

function verifyPoints(_x) {
    if (_x >= (area_x + 75) and _x <= (area_width - 75)) {
        return "Perfeito";
    } else if (_x >= (area_x + 50) and _x <= (area_width - 50)){
		return "Boa";	
	} else {
		return "Ruim";
	}
}

function endGame() {
	//layer_background_visible(background_tutorial, true);
	//layer_background_change(background, sBkMandicueraBlur);
	instance_destroy(oNotes);
	audio_stop_all();
}