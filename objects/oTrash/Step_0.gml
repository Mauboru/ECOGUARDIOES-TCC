if in_pause exit;

// Evento de colisão com o objeto lixo
if (place_meeting(x, y, oResidues)) {
    destacado = true; // Destacar a lixeira quando o lixo estiver sobre ela
}else{
	destacado = false;
}