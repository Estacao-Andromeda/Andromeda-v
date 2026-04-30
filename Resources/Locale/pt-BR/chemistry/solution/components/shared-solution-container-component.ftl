shared-solution-container-component-on-examine-main-text =
     Ele contém { INDEFINITE($desc) } [color={ $color }]{ $desc }[/color] { $chemCount ->
        [1]  química.
       *[other]  mistura de produtos químicos.
    }

examinable-solution-has-recognizable-chemicals =  Você pode reconhecer { $recognizedString } na solução.

examinable-solution-recognized = [color={ $color }]{ $chemical }[/color]

examinable-solution-on-examine-volume-puddle =
    A poça é { $fillLevel ->
        [exact] [color=white]{ $current }U[/color].
        [full] Grande e transbordante!
        [mostlyfull] Grande e transbordante!
        [halffull]  profundo e fluindo.
        [halfempty]  Muito profundo.
       *[mostlyempty]  Juntando-se.
        [empty]  formando várias pequenas piscinas.
    }

-solution-vague-fill-level =
    { $fillLevel ->
        [full] [color=white]Cheio.[/color]
        [mostlyfull] [color=#DFDFDF]Na maioria Cheio[/color]
        [halffull] [color=#C8C8C8] Metade cheia.[/color]
        [halfempty] [color=#C8C8C8] Metade Vazio[/color]
        [mostlyempty] [color=#A4A4A4]Na maioria Vazio[/color]
       *[empty] [color=gray]Vazio[/color]
    }
