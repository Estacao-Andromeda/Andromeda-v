defusable-examine-defused = { CAPITALIZE(THE($name)) } É [color=lime]Desactivado.[/color].

defusable-examine-live = { CAPITALIZE(THE($name)) } É [color=red]Tic-tac[/color] E tem [color=red]{ $time }[/color]  segundos restantes.

defusable-examine-live-display-off = { CAPITALIZE(THE($name)) } É [color=red]Tic-tac[/color]E o temporizador parece estar desligado.

defusable-examine-inactive = { CAPITALIZE(THE($name)) } É [color=lime]inativo[/color]Mas ainda pode estar armado.

defusable-examine-bolts =
     Os parafusos são { $down ->
        [true] [color=red] Abaixem-se.[/color]
       *[false] [color=green] Levante-se.[/color]
    }.
