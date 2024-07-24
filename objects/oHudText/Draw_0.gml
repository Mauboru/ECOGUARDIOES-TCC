draw_self();

switch(tipo){
	case "tempo":{
		var _horas = string(floor(timer / 60));
		var _minutos = string(floor(timer % 60));
		var _texto = "Tempo: " + _horas + ":" + _minutos;
		var _length = string_length(_texto);

		if (string_length(_minutos) == 1) _minutos = "0" + _minutos;
	    var _rect_left = x - _length * 6;
	    var _rect_right = x + _length * 10;
	    var _rect_top = y - 20;
	    var _rect_bottom = y + 20;

	    draw_set_alpha(0.5);
	    draw_set_color(c_black);
	    draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sClock, 0, x + _length * 8, y);
		
		draw_set_alpha(1);
		break;
	}
	
	default: {
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, "vazio");
		break;
	}
}