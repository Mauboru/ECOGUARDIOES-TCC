randomize();

clicado = false;
x_anterior = x;
y_anterior = y;
papel = 0;
vidro = 1;
plastico = 2;
metal = 3;
tipo = choose(0,2);

switch (tipo) {
    case papel:
        tipo = "papel"
		sprite = irandom_range(4, 7)
		image_index = sprite;
        break;
    case vidro:
        tipo = "vidro"
		sprite = irandom_range(8, 10)
		image_index = sprite;
        break;
    case plastico:
        tipo = "plastico"
		sprite = irandom_range(0, 3)
		image_index = sprite;
        break;
    case metal:
        tipo = "metal"
		sprite = irandom_range(11, 14)
		image_index = sprite;
        break;
}