var _horas = string(floor(timer / 60));
var _pontos = string_format(pontos, 4, 0);
var _onda = string(wave);

if room_get_name(room) == "rmModulo1" {
	if typeText == "timer" {
		var _minutos = string(floor(timer % 60));
		var _texto = "Tempo: " + _horas + ":" + _minutos;
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sClock, 0, x + _length * 8, y);
		if (string_length(_minutos) == 1) _minutos = "0" + _minutos;
	}
	
	if typeText == "scores" {
		var _texto = "Pontos:" + _pontos;
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sScore, 0, x + _length * 8, y);
	}
	
	if typeText == "waves" {
		var _texto = "Onda:     " + _onda;
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sWave, 0, x + _length * 8, y);
	}
	
	draw_set_alpha(1);
	
}

else if room_get_name(room) == "rmModulo2" {
	if typeText == "scores" {
		var _texto = "Pontos:" + _pontos;
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sScore, 0, x + _length * 8, y);
	}
} 

else if room_get_name(room) == "rmModulo3" {
	if typeText == "saldo" {
		var _texto = "Saldo:    " + string(saldo);
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_yellow, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sDinheiro, 0, x + _length * 8, y);
	}
	if typeText == "saldo_negativo" {
		var _texto = " Negativo:  " + string(saldo_negativo);
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_red, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sDinheiro, 0, x + _length * 8, y);
	}
	if typeText == "saldo_total" {
		var _texto = "Total:    " + string(saldo_total);
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_green, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sDinheiro, 0, x + _length * 8, y);
	}
} 

else if room_get_name(room) == "rmFimDeJogoModulo1" {
	if typeText == "scores" {
		var _texto = "Pontos:" + _pontos;
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sScore, 0, x + _length * 8, y);
	}
}

else if room_get_name(room) == "rmFimDeJogoModulo2" {
	if typeText == "scores" {
		var _texto = "Pontos:" + _pontos;
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sScore, 0, x + _length * 8, y);
	}
} 

else if room_get_name(room) == "rmFimDeJogoModulo3" {
	if typeText == "scores" {
		var _texto = "Pontos:" + _pontos;
		var _length = string_length(_texto);
		var _rect_left = x - _length * 6;
		var _rect_right = x + _length * 10;
		var _rect_top = y - 20;
		var _rect_bottom = y + 20;

		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(_rect_left, _rect_top, _rect_right, _rect_bottom, false);
		draw_set_alpha(1);
		drawing(fnt_ui, c_white, fa_middle, fa_center, x, y, _texto);
		draw_sprite(sScore, 0, x + _length * 8, y);
	}
} 

else drawing(fnt_pixel, c_white, fa_middle, fa_center, room_width/2, 60, "Apoiadores");