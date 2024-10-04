tempo_espera_criar_boto_max = choose(room_speed * 5, room_speed * 8); //5 a 8 segundos
tempo_espera_criar_bagre_max = choose(room_speed * 8, room_speed * 15); //8 a 15 segundos
tempo_espera_criar_carangueijo_max = choose(room_speed * 1, room_speed * 5); //1 a 5 segundos

tempo_espera_criar_boto = tempo_espera_criar_boto_max;
tempo_espera_criar_bagre = tempo_espera_criar_bagre_max;
tempo_espera_criar_carangueijo = tempo_espera_criar_carangueijo_max;

qtd_max_bagre = 3;
qtd_max_carangueijo = 3;
qtd_max_boto = 1;