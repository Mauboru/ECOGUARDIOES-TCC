globalvar sceneIsNow;

sceneIsNow = 1;

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

function wrap_text(_text, _max_width) {
    var words = string_split(_text, " ");
    var line = "";
    var result = [];
    
    for (var i = 0; i < array_length(words); i++) {
        var temp_line = (line == "") ? words[i] : line + " " + words[i];
        
        if (string_width(temp_line) > _max_width) {
            array_push(result, line);
            line = words[i];
        } else {
            line = temp_line;
        }
    }
    
    array_push(result, line);
    return result;
}