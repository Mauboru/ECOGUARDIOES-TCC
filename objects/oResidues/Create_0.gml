randomize();

globalvar index_selecionado;

index_selecionado = false;

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
		image_index = 0;
        break;
    case vidro:
        tipo = "vidro";
		image_index = 1;
        break;
    case plastico:
        tipo = "plastico";
		image_index = 2;
        break;
    case metal:
        tipo = "metal";
		image_index = 3;
        break;
}