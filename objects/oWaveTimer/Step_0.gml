if (countdown > 0) {
    countdown -= 1/60;
	
    if countdown <= 3 and wave < 7 text = "ONDA " + string(wave);
	else if countdown <=3 and wave == 7 text = "ONDA FINAL";
    else text = string(floor(countdown - 2));
	
} else instance_destroy();