if (room_get_name(room) == "rm_fim_de_jogo") {
	drawing(fnt_ui, c_white, fa_middle, fa_center, room_width/2, room_height/2 - 120, pontos)
}

//DEBUG
if debug {
	draw_text(x, y, "Onda: " + string(wave));
	draw_text(x, y + 10, "Cena Atual: " + string(sceneIsNow));
}