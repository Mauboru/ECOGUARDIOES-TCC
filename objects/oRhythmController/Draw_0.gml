var startX = 0;
var startY = room_height / 2;
var endX = room_width;
var endY = room_height / 2;
var thickness = 8;
var radius = 40;
var centerX = room_width / 2;
var centerY = room_height / 2;
var borderColor = c_white;

for (var i = -thickness / 2; i < thickness / 2; i++) {
    draw_line_color(startX, startY + i, endX, endY + i, c_white, c_white);
}

draw_set_color(c_black);
draw_circle(centerX, centerY, radius, false);

draw_set_color(borderColor);
draw_circle(centerX, centerY, radius, true);