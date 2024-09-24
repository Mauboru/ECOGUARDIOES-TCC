randomize();
audio_group_set_gain(music_group, music_volume, 0);

var room_name = room_get_name(room);

switch (room_name) {	
	
	#region MODULE 1
	
		#region JOGO
		case "rmModule1":
			if (!audio_is_playing(snd_tema)) audio_play_sound(snd_tema, 1, 1);
		
			#region TIMER
				if timer > 0 and intervalWave == false and in_pause == false {
					timer -= timer_vel;
				}
				if timer <= 0 {
					if wave == 3 {
						transition(rmScene);
						exit;
					} else if wave == 7 {
						transition(rm_fim_de_jogo);
						exit;
					}
					intervalBetweenWaves();	
				}
			#endregion

			#region ENEMIES
			var _quantidade_desejada = 10;
			var _quantidade_existente = instance_number(oPersons);
			var _instancias_a_adicionar = _quantidade_desejada - _quantidade_existente;
			_instancias_a_adicionar = min(_instancias_a_adicionar, 2);
    
			if (_instancias_a_adicionar > 0 and not timer <= 5 and !intervalWave and initTruckInGame == false) {
				repeat(_instancias_a_adicionar) {
					alarm[0] = irandom_range(0, 130);
				}
			}

			if timer <= 5 and _quantidade_existente != 0 {
				stopCreateEnemy = true;
			}
			
			if initTruckInGame and !intervalWave {
				if !instance_exists(oTruck) instance_create_layer(0, 620, "Instances", oTruck);
			}

			if (timer <= 5) {
				initTruckInGame = false;
				stopCreateEnemy = true;
				sceneIsNow = 2;
			}
			
			#endregion
		
			#region HUD GUARA
			
			if isHudGuaraActive {
				timerHud -= .2;
				
				if timerHud <= 0 {
					oHudGuara.sprite_index = sHudGuara;
					timerHud = timerHudMax;
					isHudGuaraActive = false;
				}
			}
		
			#endregion
		
			#region SCORE
		
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
	
			#region TRASH
			if !addMoreResidues and !instance_exists(oTrash) {
				var scale = .3;
				var plastic = instance_create_layer(159, 727, "UI", oTrash);
				var paper = instance_create_layer(336, 727, "UI", oTrash);
		
				plastic.tipo = "plastico";
				plastic.image_xscale = scale;
				plastic.image_yscale = scale;
		
				paper.tipo = "papel";
				paper.image_xscale = scale;
				paper.image_yscale = scale;
			} else if addMoreResidues {
				if !instance_exists(oTrash) {
					var scale = .3;
					var xx = 80;
					var spacing = xx * 1.5;
					var yy = 730;
					var plastic = instance_create_layer(xx, yy, "UI", oTrash);
					var paper = instance_create_layer(xx + spacing, yy, "UI", oTrash);
					var glass = instance_create_layer(xx + spacing * 2, yy, "UI", oTrash);
					var metal = instance_create_layer(xx + spacing * 3, yy, "UI", oTrash);
		
					plastic.tipo = "plastico";
					plastic.image_xscale = scale;
					plastic.image_yscale = scale;
		
					paper.tipo = "papel";
					paper.image_xscale = scale;
					paper.image_yscale = scale;
		
					metal.tipo = "metal";
					metal.image_xscale = scale;
					metal.image_yscale = scale;
		
					glass.tipo = "vidro";
					glass.image_xscale = scale;
					glass.image_yscale = scale;
				} else if !destroyed {
					instance_destroy(oTrash);
					destroyed = true;
				}
			}
			#endregion

		break;
		#endregion
	
		#region FIM DE JOGO
		case "rm_fim_de_jogo":
			#region Water Effect
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
			#endregion

			wave = 0;
			intervalWave = false;
			stopCreateEnemy = false;
			initTruckInGame = false;
			addMoreResidues = false;
		
		    if (!audio_is_playing(snd_menu)) audio_play_sound(snd_menu, 1, 1);
		break;
		#endregion
	
	#endregion
	
	#region MODULE 2
	
		#region JOGO
		case "rmModule2":
			if (!audio_is_playing(snd_fandango)) audio_play_sound(snd_fandango, 1, 1);
		
			#region SCORE
		
			if pontos < 0 pontos = 0;
		
			#endregion
	
			#region PAUSE
			var instancesLayer = layer_get_id("Instances");
			
			if in_pause {
				instance_deactivate_object(oDrum);
				speed = 0;
			} else {
				instance_activate_object(oDrum);
				speed -= 1.5;
			}
		
			#endregion
		
		break;
	
		#endregion
	
	#endregion
	
	#region MODULE 3
	
	#endregion
	
	#region SCENES
	case "rmScene":
		var btSkip = instance_create_layer(416, 736, "UI", oSkip);
		var oTutorial = instance_create_layer(room_width/2, room_height/2, "UI", oGifTutorial);
		var background = layer_background_get_id("Backgrounds");
		btSkip.caracteres = "k";
		btSkip.texto = "Pular";
	
		if sceneIsNow == 1 /*Cena onde ensina os 2 primeiros tipos de residuos*/{
			btSkip.destino = rmModule1;
			layer_background_change(background, sBkMangroveBlur);
			instance_create_layer(-100, 0, "UI", oResidueCutscene);
			instance_create_layer(-100, 0, "UI", oTrash);
			instance_create_layer(room_width/2, room_height/2, "UI", oDialogue01);
			intervalWave = false;
			sceneIsNow = 0;
		} else if sceneIsNow == 2 /*Cena onde ensina os outros 2 tipos de residuos*/ {
			layer_background_change(background, sBkMangroveBlur);
			instance_create_layer(-100, 0, "UI", oResidueCutscene);
			instance_create_layer(-100, 0, "UI", oTrash);
			instance_create_layer(room_width/2, room_height/2, "UI", oDialogue02);
			wave++;
			intervalWave = false;
			sceneIsNow = 0;		
		} else if sceneIsNow == 3 /*Cena onde tutorial de jogar no ritmo*/ {
			btSkip.destino = rmModule2;
			oTutorial.sprite_index = sModule2Tutorial;
			layer_background_change(background, sBkMandicueraBlur);
			sceneIsNow = 0;
		}
	break;
	#endregion
	
	#region MENU
	case "rmMenu":
		if (!audio_is_playing(snd_menu)) audio_play_sound(snd_menu, 1, 1);
		sceneIsNow = 1;
	break;
	#endregion
	
	#region MAP
	case "rmMap":
		if (!audio_is_playing(snd_map)) audio_play_sound(snd_map, 1, 0);
		
	break;
	#endregion
    
	default:
		audio_stop_all();
    break;
}

//Evitando erros de instanciação continua
if room_name != "rmModule1" and room_name != "rmModule2" {
	instance_destroy(oTruck);
	instance_destroy(oPersons);
	if ds_exists(objects, ds_type_list) ds_list_destroy(objects);
}