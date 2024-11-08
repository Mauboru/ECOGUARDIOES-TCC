if !jaPodeCriarNotas exit;

audio_play_sound(snd_fx_drum, 1, 0);
image_xscale = 1.2;
image_yscale = 1.2;
alarm[0] = 10;

var firstNote = instance_nearest(x, y, oNotes);
var stats = instance_create_layer(room_width/2, room_height/2, "Transitions", oStats);

if (firstNote != noone) {
    if (position_meeting(firstNote.x, firstNote.y, cBad)) {
		stats.image_index = 2;
		pontos -= 5;
        instance_destroy(firstNote);
    }
    else if (position_meeting(firstNote.x, firstNote.y, cGood)) {
        stats.image_index = 1;
		pontos += 5;
        instance_destroy(firstNote);
    }
    else if (position_meeting(firstNote.x, firstNote.y, cPerfect)) {
		stats.image_index = 0;
		pontos += 10;
        instance_destroy(firstNote); 
    }
}
