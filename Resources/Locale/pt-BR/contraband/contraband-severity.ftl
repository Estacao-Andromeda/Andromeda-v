contraband-examine-text-Minor =
    { $type ->
       *[item] [color=yellow]Este item é considerado contrabando.[/color]
        [reagent] [color=yellow]Este reagente é considerado contrabando.[/color]
    }

contraband-examine-text-Restricted =
    { $type ->
       *[item] [color=yellow]Este item é restrito departamentalmente.[/color]
        [reagent] [color=yellow]Este reagente é restrito.[/color]
    }

contraband-examine-text-Restricted-department =
    { $type ->
       *[item] [color=yellow]Este item está restrito a { $departments }E pode ser considerado contrabando.[/color]
        [reagent] [color=yellow]Este reagente está restrito a { $departments }E pode ser considerado contrabando.[/color]
    }

contraband-examine-text-Major =
    { $type ->
       *[item] [color=red]Este item é considerado contrabando.[/color]
        [reagent] [color=red]Este reagente é considerado contrabando.[/color]
    }

contraband-examine-text-GrandTheft =
    { $type ->
       *[item] [color=red]Este item é um alvo muito valioso para agentes do Sindicato![/color]
        [reagent] [color=red]Este reagente é um alvo muito valioso para agentes do Sindicato![/color]
    }

contraband-examine-text-Highly-Illegal =
    { $type ->
       *[item] [color=crimson]Este item é altamente ilegal![/color]
        [reagent] [color=crimson]Este reagente é contrabando altamente ilegal![/color]
    }

contraband-examine-text-Syndicate =
    { $type ->
       *[item] [color=crimson]Este item é altamente ilegal contrabandeamento Syndicate![/color]
        [reagent] [color=crimson]Este reagente é altamente ilegal contrabando de Sindicato![/color]
    }

contraband-examine-text-Magical =
    { $type ->
       *[item] [color=#b337b3]Este item é altamente ilegal contrabando mágico![/color]
        [reagent] [color=#b337b3]Este reagente é altamente ilegal contrabando mágico![/color]
    }

contraband-examine-text-avoid-carrying-around = [color=red][italic] Provavelmente você quer evitar carregar isso visivelmente sem uma boa razão.[/italic][/color]

contraband-examine-text-in-the-clear = [color=green][italic] Você deve estar livre para carregar isso de forma visível.[/italic][/color]

contraband-examinable-verb-text = Legalidade.

contraband-examinable-verb-message =  Verifique a legalidade deste item.

contraband-department-plural = { $department }

contraband-job-plural = { MAKEPLURAL($job) }
