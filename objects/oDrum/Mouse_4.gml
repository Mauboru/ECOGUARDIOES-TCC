audio_play_sound(snd_drum, 1, 0);
image_xscale = 1.2;
image_yscale = 1.2;
alarm[0] = 10;

print(area_x);
print(area_width);
print(oNotes.x);

var nota = instance_place(mouse_x, mouse_y, oNotes);

if (nota != noone) {
    var _verify = verifyPoints(nota.x);
    var _points = instance_create_layer(room_width / 2, room_height / 2, "Instances", oStats);

    if (_verify == "Perfeito") {
        pontos += 10;
        _points.image_index = 0;
    } else if (_verify == "Boa") {
        pontos += 5;
        _points.image_index = 1;
    } else if (_verify == "Ruim") {
        pontos -= 10;
        _points.image_index = 2;
    }

    instance_destroy(nota);
}