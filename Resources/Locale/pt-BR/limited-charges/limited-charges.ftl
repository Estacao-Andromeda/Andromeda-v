limited-charges-charges-remaining =
    { $charges ->
        [one]  Tem. [color=fuchsia]{ $charges }[/color]  Carga restante.
       *[other]  Tem. [color=fuchsia]{ $charges }[/color] - As acusações restantes.
    }

limited-charges-max-charges =  Está em [color=green] máximo[/color] - Acusações.

limited-charges-recharging =
    { $seconds ->
        [one]  Há [color=yellow]{ $seconds }[/color]  Segunda esquerda até a próxima carga.
       *[other]  Há [color=yellow]{ $seconds }[/color]  segundos restantes até a próxima carga.
    }
