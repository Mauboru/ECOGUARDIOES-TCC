var spriteWidth = string_width(texto) + 8;
var spriteHeight = string_height(texto) + 4;
var instButtomHover = instance_position(mouse_x, mouse_y, oButtom);
var isSelected = instButtomHover == id;

image_xscale = spriteWidth / 20; 
image_yscale = spriteHeight / 16;

if isSelected {
	image_blend = merge_color(image_blend, hover_color, 0.1);
	if mouse_check_button_pressed(k_accept){
		audio_play_sound(snd_fx_select, 1, false);
		if destino != noone transition(destino)
		if on_click != noone{
			on_click();
		}
	}
}else{
	image_blend = merge_color(image_blend, base_color, 0.1);
}