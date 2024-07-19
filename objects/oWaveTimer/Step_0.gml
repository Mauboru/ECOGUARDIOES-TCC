if (countdown > 0) {
    countdown -= 1/room_speed;
	
    if countdown <= 3 text = "ONDA " + string(wave);
    else text = string(floor(countdown - 2));
	
} else instance_destroy();