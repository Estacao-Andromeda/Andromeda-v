point-scoreboard-header = [bold] Painel de avaliação[/bold]

point-scoreboard-list =
    { $place }. [bold][color=cyan]{ $name }[/color][/bold]  Marcado. [color=yellow]{ $points ->
        [one] { $points }  Ponto
       *[other] { $points }  Pontos
    }.[/color]
