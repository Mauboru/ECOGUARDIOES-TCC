event_inherited();

var _click = mouse_check_button_pressed(k_accept)
var _colision = instance_position(mouse_x, mouse_y, oBtPause);
var blur = layer_get_id("Pause");
var divider = 3;

if _click and _colision  in_pause = !in_pause

if in_pause {
	instance_create_layer(room_width/2, room_height/divider + 96, "UI", oBtVolume);
	instance_create_layer(room_width/2, room_height/divider + 192, "UI", oBtReturn);
	instance_create_layer(room_width/2, room_height/divider + 288, "UI", oBtExit);
	caracteres = "D";
	texto = "Resumir";
	x = room_width/2;
	y = room_height/divider;
	layer_set_visible(blur, true);
	audio_pause_all();
	
	redimensionarBotao(texto, 8, texto, 4);
	
} else {
	instance_destroy(oBtReturn);
	instance_destroy(oBtExit);
	instance_destroy(oBtVolume);
	caracteres = "C";
	texto = "Pause";
	x = 72;
	y = 48;
	layer_enable_fx("Effect", false);
	layer_set_visible(blur, false);
	audio_resume_all();
	
	redimensionarBotao(texto, 8, texto, 4);
}