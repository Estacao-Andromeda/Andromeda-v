analysis-console-menu-title = Consola de Análise de Espectro de Ampla Marca 3

analysis-console-server-list-button =  Servidor

analysis-console-extract-button =  Pontos de extração

analysis-console-info-no-scanner = Por favor, conecte um usando uma multitool.

analysis-console-info-no-artifact =  Coloque um no bloco para ver informações do nó.

analysis-console-info-ready =  Sistemas operacionais, prontos para escanear.

analysis-console-no-node =  Selecione o nó para ver

analysis-console-info-id = [font="Monospace" size=11]ID:[/font]

analysis-console-info-id-value = [font="Monospace" size=11][color=yellow]{ $id }[/color][/font]

analysis-console-info-class = [font="Monospace" size=11] Classe:[/font]

analysis-console-info-class-value = [font="Monospace" size=11]{ $class }[/font]

analysis-console-info-locked = [font="Monospace" size=11]Estado:[/font]

analysis-console-info-locked-value = [font="Monospace" size=11][color={ $state ->
        [0] -Trancado.
        [1] Destrancada.
       *[2] Ativo
    }[/color][/font]

analysis-console-info-durability = [font="Monospace" size=11] Durabilidade:[/font]

analysis-console-info-durability-value = [font="Monospace" size=11][color={ $color }]{ $current }/{ $max }[/color][/font]

analysis-console-info-effect = [font="Monospace" size=11]Efeito:[/font]

analysis-console-info-trigger = [font="Monospace" size=11]-Atiçadores:[/font]

analysis-console-info-triggered-value = [font="Monospace" size=11][color=gray]{ $triggers }[/color][/font]

analysis-console-info-scanner = Escaneando...

analysis-console-info-scanner-paused = Pausa.

analysis-console-progress-text =
    { $seconds ->
        [one] T-{ $seconds }  Segundo
       *[other] T-{ $seconds }  segundos
    }

analyzer-artifact-extract-popup =  Energia brilha na superfície do artefato!
