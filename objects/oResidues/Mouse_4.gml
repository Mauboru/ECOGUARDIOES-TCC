if (in_pause) exit;

if (!clicado) {
    var residueInPosition = instance_position(mouse_x, mouse_y, oResidues);
	
    if (residueInPosition != noone && residueInPosition == id) {
        clicado = true;

        with (oTrash) {
            if (tipo == residueInPosition.tipo) {
                sprite_index = sTrashTarget;
				image_xscale *= 1.2;
				image_yscale *= 1.2;
            }
        }
    }
}