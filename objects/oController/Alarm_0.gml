if in_pause exit;
if stopCreateEnemy exit;

var xx = choose(-32, room_width + 30);
var persons = instance_create_layer(xx, 577, "Instances", oPersons);
persons.image_yscale = 0.5;
persons.image_xscale = 0.5;