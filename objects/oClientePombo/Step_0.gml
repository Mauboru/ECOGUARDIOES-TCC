// Defina a posição de destino
var destino_x = 96;
var destino_y = 320;

// Defina a quantidade de "pulos" (mude os valores conforme necessário)
var pulo = 5;

// Parâmetros para o movimento ondulado (subindo e descendo)
var amplitude = 10;  // A amplitude do movimento vertical (quanto ele sobe/ desce)
var velocidade_onda = 0.06;  // Velocidade da onda (quanto mais lento, mais suave o movimento vertical)

// Verifica se o cliente ainda não chegou no destino
if (x != destino_x) {
    // Movimento para a posição destino com "pulinho" horizontal
    if (x < destino_x) {
        x += pulo;  // Move para a direita
    } else if (x > destino_x) {
        x -= pulo;  // Move para a esquerda
    }
    
    // Garante que o objeto não ultrapasse a posição de destino
    if (abs(x - destino_x) < pulo) {
        x = destino_x;
    }

    // Movimento ondulado para cima e para baixo enquanto se move para a direita
    y = destino_y + amplitude * sin(velocidade_onda * x);
} else {
    sprite_index = sClientePombo;
}
