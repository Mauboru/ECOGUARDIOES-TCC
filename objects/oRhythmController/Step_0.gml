var max_notas = 3;
var espacamento_min = 150;
var espacamento_max = 200;

var qtd_existing = instance_number(oNota);
var instances_add = max_notas - qtd_existing;

if (jaPodeCriarNotas && instances_add > 0) {
    if (time_since_last_creation >= time_interval) {
        var notas_existentes_y = [];
        with (oNota) {
            array_push(notas_existentes_y, y);
        }

        for (var i = 0; i < instances_add; i++) {
            var lado = choose(-1, 1);
            
            var pos_x = room_width / 2 + lado * 100;
            var pos_y = 0;
            var espaco_valido = false;
            
            repeat (10) {
                pos_y = -irandom_range(0, 500); 
                espaco_valido = true;

                for (var j = 0; j < array_length(notas_existentes_y); j++) {
                    var distancia_y = abs(pos_y - notas_existentes_y[j]);
                    if (distancia_y < espacamento_min || distancia_y > espacamento_max) {
                        espaco_valido = false;
                        break;
                    }
                }
                if (espaco_valido) break;
            }
            
            if (espaco_valido) {
                var nova_nota = instance_create_layer(pos_x, pos_y, "Instances", oNota);
                nova_nota.isDireita = (lado == 1);
                
                array_push(notas_existentes_y, pos_y);
            }
        }
        time_since_last_creation = 0;
    }
}

time_since_last_creation += 0.1;