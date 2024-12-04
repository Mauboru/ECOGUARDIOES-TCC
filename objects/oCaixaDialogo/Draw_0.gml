draw_self();

var wrapped_text = wrap_text(texto, 100);
var y_offset = y - 25;
        
for (var i = 0; i < array_length(wrapped_text); i++) {
	drawing(fnt_pixel, c_black, fa_middle, fa_center, x - 35, y_offset, wrapped_text[i]);
    y_offset += 24;
}