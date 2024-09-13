//globalvar ;

function verifyPoints(_x) {
	if _x > 200 and _x < 250 return "Perfeito";
	else if (_x > 180 and _x < 200) || (_x > 250 and _x < 270) return "Boa";
	else return "Ruim";
}