-entity-heater-setting-name =
    { $setting ->
        [off]  Desligar
        [low]  baixo
        [medium]  Médio
        [high] Alto.
       *[other]  desconhecido
    }

entity-heater-examined =
     Está definido para { $setting ->
        [off] [color=gray]{ -entity-heater-setting-name(setting: "off") }[/color]
        [low] [color=yellow]{ -entity-heater-setting-name(setting: "low") }[/color]
        [medium] [color=orange]{ -entity-heater-setting-name(setting: "medium") }[/color]
        [high] [color=red]{ -entity-heater-setting-name(setting: "high") }[/color]
       *[other] [color=purple]{ -entity-heater-setting-name(setting: "other") }[/color]
    }.
