globalvar ptGood, ptBad, ptPerfect;

ptGood = 0;
ptBad = 0;
ptPerfect = 0;

function verifyPoints(_x) {
	if _x > 200 and _x < 250 return "Perfeito";
	else if (_x > 180 and _x < 200) || (_x > 250 and _x < 270) return "Boa";
	else return "Ruim";
}