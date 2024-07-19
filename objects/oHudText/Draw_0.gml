draw_self();

switch(tipo){
	case "tempo":{
		var _horas = string(floor(timer / 60));
		var _minutos = string(floor(timer % 60));

		if (string_length(_minutos) == 1) _minutos = "0" + _minutos;

		drawing(fnt_ui, c_black, fa_middle, fa_center, x, y, "Tempo: " + _horas + ":" + _minutos);
		break;
	}
	
	case "pontos":{
		drawing(fnt_ui, c_black, fa_middle, fa_center, x, y, "Pontos: " + string(pontos));
		break;
	}
	
	case "onda":{
		drawing(fnt_ui, c_black, fa_middle, fa_center, x, y, "Onda: " + string(wave));
		break;
	}
	
	default: {
		drawing(fnt_ui, c_black, fa_middle, fa_center, x, y, text);
		break;
	}
}