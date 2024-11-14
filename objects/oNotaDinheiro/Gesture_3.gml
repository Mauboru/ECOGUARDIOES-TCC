if !isTroco exit;

if position_meeting(mouse_x, mouse_y, id){
    x = mouse_x;
    y = mouse_y;
    
    if !somou {
        soma += id.valor;
        somou = true;
        print(soma); //remover isso
    }
}