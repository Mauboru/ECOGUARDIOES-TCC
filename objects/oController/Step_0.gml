randomize();
audio_group_set_gain(music_group, music_volume, 0);

var room_name = room_get_name(room);

switch (room_name) {	
	case "rm_map":
		if (!audio_is_playing(snd_map)) audio_play_sound(snd_map, 1, 0);
		break;
		
	case "rm_cutscene":
		if aparecer == true {
			fn_cutscene_sequence(seq_cutscene);
			aparecer = noone;
		}
		break;
		
	case "rm_menu":
	    if (!audio_is_playing(snd_menu)) audio_play_sound(snd_menu, 1, 1);
		break;
		
	case "rm_fim_de_jogo":
	    var _layer_id = layer_get_id("bk_water");
	    var _new_y = layer_get_y(_layer_id);
		
		if  (_new_y <= 500) {
			_new_y = 500;
		} else {
			 _new_y -= random_range(.8, 1.5)
			layer_y(_layer_id,  _new_y);
		}
		
		if (oLimit.y > 552) oLimit.phy_position_y -= .4;
		if (oLimit.y < 552) oLimit.phy_position_y += 50;

	    if (!audio_is_playing(snd_menu)) audio_play_sound(snd_menu, 1, 1);
	    break;
    default:
        audio_stop_all();
        break;
}

#region JOGO
if room_name == "rm_jogo" {
	if (!audio_is_playing(snd_tema)) audio_play_sound(snd_tema, 1, 1);
		
	#region Time
		if timer > 0 and intervalWave == false timer -= timer_vel
		if timer <= 0 intervalBetweenWaves();	
	#endregion

	#region Persons
	var _quantidade_desejada = 5;
	var _quantidade_existente = instance_number(oPersons);
	var _instancias_a_adicionar = _quantidade_desejada - _quantidade_existente;
	_instancias_a_adicionar = min(_instancias_a_adicionar, 2);
    
	// Cria as instâncias necessárias
	if (_instancias_a_adicionar > 0 and not timer <= 5 and intervalWave == false and specialEvent == false) {
		repeat(_instancias_a_adicionar) {
			alarm[0] = irandom_range(0, 130);
		}
	}

	//Deletando inimigos caso ainda existam msm após parare de ser criados
	if timer <= 5 and _quantidade_existente != 0 or intervalWave == true instance_destroy(oPersons);
	#endregion
		
	#region Events
		
	if specialEvent and !intervalWave {
		if !instance_exists(oTruck) instance_create_layer(0, 620, "Instances", oTruck);
	}

	if (timer <= 5) {
		specialEvent = false;
		instance_destroy(oTruck);
	}
		
	#endregion
		
	#region HUD
		
	if oHudGuara.image_index != 0 and stopAlarm == false {
		stopAlarm = true;
		alarm[1] = 100;
	}
		
	#endregion
		
	#region Points
		
	if pontos <= 0 pontos = 0;
		
	#endregion

	#region PAUSE
	if in_pause {
        if ds_exists(objects, ds_type_list) {
            for (var i = 0; i < ds_list_size(objects); i++) {
                var obj = ds_list_find_value(objects, i);
                with (obj) {
                    speed = 0;
                    image_speed = 0;
                }
            }
        }
    } else {
        if ds_exists(objects, ds_type_list) {
            for (var i = 0; i < ds_list_size(objects); i++) {
                var obj = ds_list_find_value(objects, i);
                with (obj) {
                    speed = 0.6;
                    if (i == 1) {
                        speed = random_range(0.8, 1.2);
                    }
                    image_speed = 3;
                }
            }
        }
    }
    #endregion

} else {
    instance_destroy(oTruck);
    instance_destroy(oPersons);
    if ds_exists(objects, ds_type_list) ds_list_destroy(objects);
}
#endregion

#region MENU

#endregion