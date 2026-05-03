analysis-console-extract-value = [font="Monospace" size=11][color=orange]Node:{ $id } Pesquisa:+{ $value }[/color][/font]

# DeltaV - modified analysis-console-glimmer-value
analysis-console-glimmer-value = [font="Monospace" size=11][color=orange]Node:{ $id } Glimmer:+{ $value }[/color][/font]

analysis-console-extract-none = [font="Monospace" size=11][color=orange] Nenhum nó desbloqueado tem pontos para extrair. [/color][/font]

# DeltaV - modified analysis-console-total-research-value
analysis-console-extract-sum = [font="Monospace" size=11][color=orange]Pesquisa Total:{ $value }[/color][/font]

# DeltaV - modified analysis-console-total-glimmer-value
analysis-console-glimmer-sum = [font="Monospace" size=11][color=orange]-Total Glimmer:{ $value }[/color][/font]

# DeltaV - modified analysis-console-multiplier-value
analysis-console-glimmer-mult = [font="Monospace" size=11][color=orange]Multiplicador atual:{ $value }[/color][/font]

analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
        [vagueandspecific] { $vagueInfo } ({ $specificInfo })
        [vagueonly] { $vagueInfo } (incapaz de detectar detalhes)
        [simple] { $specificInfo }
        [hidden]  Incapaz de detectar (desbloquear para descobrir)
       *[noinfo] Desbloqueie os nós para obter informações.
    }[/color][/font]
