tempo_espera_criar_bagre--;
tempo_espera_criar_carangueijo--;
tempo_espera_criar_boto--;

if tempo_espera_criar_boto <= 0 {
	if instance_number(oBotoCinza) != qtd_max_boto {
		instance_create_layer(choose(32, 416), choose(550, 680), "Instances", oBotoCinza);
	}
	
	tempo_espera_criar_boto = tempo_espera_criar_boto_max;
}

if tempo_espera_criar_carangueijo <= 0 {
	if instance_number(oCarangueijoUca) != qtd_max_carangueijo {
		instance_create_layer(choose(32, 416), 720, "Instances", oCarangueijoUca);
	}
	
	tempo_espera_criar_carangueijo = tempo_espera_criar_carangueijo_max;
}

if tempo_espera_criar_bagre <= 0 {
	if instance_number(oBagre) != qtd_max_bagre {
		instance_create_layer(choose(32, 416), choose(580, 650), "Instances", oBagre);
	}
	
	tempo_espera_criar_bagre = tempo_espera_criar_bagre_max;
}