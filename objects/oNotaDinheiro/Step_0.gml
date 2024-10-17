/*if (!variable_instance_exists(self, "pegando")) {
    pegando = false; 
}

var clicado = instance_position(mouse_x, mouse_y, self);

if (mouse_check_button_pressed(mb_left) && clicado) {
    var nova_instancia = instance_create_layer(x, y, "Instances", clicado.self);
    nova_instancia.pegando = true;
}

if (pegando) {
    x = mouse_x;
    y = mouse_y;

    if (!mouse_check_button(mb_left)) {
        var colisao = instance_position(x, y, obj_mao_cliente); // Altere 'obj_mao_cliente' para o nome do objeto que representa a mão do cliente
        if (colisao) {
          instance_destroy(); // Remove a instância da nota
        } else {
            instance_destroy(); 
        //}
    }
}

if (!clicado && !pegando) {
    instance_destroy();
}
*/