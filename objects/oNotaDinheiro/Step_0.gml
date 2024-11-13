if !isTroco exit;

if mouse_check_button(mb_left) and position_meeting(mouse_x, mouse_y, id) {
    x = mouse_x;
    y = mouse_y;
    
    if !somou {
        soma += id.valor;
        somou = true;
        print(soma);
    }
} else {
    x = x_antigo;
    y = y_antigo;
    somou = false;
}