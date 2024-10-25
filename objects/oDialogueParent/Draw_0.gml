draw_self();

if (showing_dialog && current_dialog != undefined) {
    if (variable_instance_exists(current_dialog, "message")) {
        var wrapped_text = wrap_text(string_copy(current_dialog.message, 1, floor(index)), 320);
        var y_offset = 570;
        
        for (var i = 0; i < array_length(wrapped_text); i++) {
			drawing(fnt_pixel, c_white, fa_middle, fa_center, room_width/2, y_offset, wrapped_text[i]);
            y_offset += 24;
        }
    } 
    else {
        draw_text(32, 32, "Erro: Mensagem não encontrada!");
    }
}
