audio_stop_all();
in_pause = false;
instance_destroy(oResidues);
if !instance_exists(oController) instance_create_layer(room_width/2, room_height/2, "Instances", oController)
reiniciarModulo1();