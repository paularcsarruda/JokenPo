# Rock, Paper and Scissors

Jogo "Pedra, Papel e Tesoura" desenvolvido em Ruby, utilizando função e cor ANSI.

## Explicação da função utilizada

No jogo de pedra, papel e tesoura, temos três opções possíveis para o usuário (ou jogador) e para o computador: pedra, papel e tesoura. Cada uma dessas opções é representada por um número inteiro:

1 representa pedra
2 representa papel
3 representa tesoura

### Explicação da Expressão (user_choice - pc_choice) % 3:

Subtração (user_choice - pc_choice):

user_choice é o número escolhido pelo usuário.
pc_choice é o número escolhido pelo computador.
Essa operação calcula a diferença entre o número escolhido pelo usuário e o número escolhido pelo computador.
Módulo (% 3):

O operador % calcula o resto da divisão inteira entre o resultado da subtração e o número 3.

#### Resultados Possíveis:

O resultado dessa operação pode ser 0, 1 ou 2, pois são os possíveis restos da divisão por 3.

Quando result == 0: Isso significa que user_choice e pc_choice são iguais (por exemplo, ambos escolheram pedra, papel ou tesoura). Nesse caso, o jogo resulta em empate.

Quando result == 1: Isso significa que user_choice é 1 unidade maior que pc_choice na sequência circular de opções (por exemplo, se user_choice é pedra (1) e pc_choice é tesoura (3)). Isso resulta em vitória para o usuário.

Quando result == 2: Isso significa que user_choice é 2 unidades maior que pc_choice na sequência circular de opções (por exemplo, se user_choice é tesoura (3) e pc_choice é pedra (1)). Isso resulta em vitória para o computador.

#### Exemplo de Funcionamento:

Suponha que o usuário escolha pedra (user_choice = 1) e o computador escolha tesoura (pc_choice = 3):

result = (1 - 3) % 3
result = (-2) % 3
Como -2 não é positivo, adicionamos 3 (porque temos um resto negativo)
