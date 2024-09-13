randomize();

clicado = false;
x_anterior = x;
y_anterior = y;
papel = 0;
vidro = 1;
plastico = 2;
metal = 3;

if addMoreResidues tipo = choose(0,1,2,3);
else tipo = choose(0,2);

switch (tipo) {
    case papel:
        tipo = "papel";
		sprite = 0;
		image_index = sprite;
        break;
    case vidro:
        tipo = "vidro";
		sprite = 1;
		image_index = sprite;
        break;
    case plastico:
        tipo = "plastico";
		sprite = 2;
		image_index = sprite;
        break;
    case metal:
        tipo = "metal";
		sprite = 3;
		image_index = sprite;
        break;
}