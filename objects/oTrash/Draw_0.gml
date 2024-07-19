if (destacado) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, image_blend, image_alpha);
} else {
    draw_self();
}

if room_get_name(room) != "rm_jogo" return;

drawing(fnt_pixel, c_white, fa_middle, fa_center, x, y + 55, tipo)