if position_meeting(mouse_x, mouse_y, id) {
    audio_play_sound(snd_fx_select, 1, false);
    
    if destino != noone {
        transition(destino); 
    }
}