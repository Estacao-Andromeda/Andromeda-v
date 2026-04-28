power-radiation-collector-gas-tank-missing = O tanque de plasma está no ponto de partida. [color=darkred] vazio[/color].

power-radiation-collector-gas-tank-present =
    O tanque de plasma está no ponto de partida. [color=darkgreen]Preenchido[/color] E o indicador do tanque diz:{ $fullness ->
       *[0] "Vermelho" vazio.
        [1]  Vermelho]low
        [2]  amarelo]meio-cheio
        [3] - Completo.
    }[/color].

power-radiation-collector-enabled =
     Está trocada.{ $state ->
        [true] -Escuro-verde]
       *[false] Off, obscurecida.
    }[/color].
