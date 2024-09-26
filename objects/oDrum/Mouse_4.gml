audio_play_sound(snd_drum, 1, 0);
image_xscale = 1.2;
image_yscale = 1.2;
alarm[0] = 10;

var firstNote = instance_nearest(x, y, oNotes);

if (firstNote != noone) {
    if (position_meeting(firstNote.x, firstNote.y, cBad)) {
		print("Erro!");
        instance_destroy(firstNote);
    }
    else if (position_meeting(firstNote.x, firstNote.y, cGood)) {
        print("Acerto Bom!");
        instance_destroy(firstNote);
    }
    else if (position_meeting(firstNote.x, firstNote.y, cPerfect)) {
		print("Acerto Perfeito!");
        instance_destroy(firstNote); 
    }
}
