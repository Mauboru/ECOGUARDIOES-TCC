//Desenhando um retangulo na tela toda
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(-1, -1, view_wport[0] * 2, view_hport[0] * 2, false);
draw_set_color(-1);
draw_set_alpha(1);