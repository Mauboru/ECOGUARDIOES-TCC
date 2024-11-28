// Variáveis de controle
var qtd_existing = instance_number(oNota);
var instances_add = qtd - qtd_existing;

if (jaPodeCriarNotas) {
    if (instances_add > 0) {
        // Controla o tempo para a criação das notas
        if (time_since_last_creation >= time_interval) {
            // Cria duas notas à esquerda
            instance_create_layer(room_width / 2 - 100, 0, "Instances", oNota);
            instance_create_layer(room_width / 2 - 100, -120, "Instances", oNota);

            // Cria uma nota à direita
            var direita = instance_create_layer(room_width / 2 + 100, -280, "Instances", oNota);
			direita.isDireita = true;
			
            // Reseta o temporizador
            time_since_last_creation = 0;
        }
    }
}

// Atualiza o temporizador
time_since_last_creation += .1;