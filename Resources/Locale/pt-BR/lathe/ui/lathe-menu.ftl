lathe-menu-title = Menu Torno

lathe-menu-queue = Fila.

lathe-menu-server-list =  Lista de servidores

lathe-menu-sync = Sincronização

lathe-menu-search-designs =  Procurem em projetos.

lathe-menu-category-all =  Todos.

lathe-menu-search-filter =  Filtro:

lathe-menu-amount =  Quantidade:

lathe-menu-recipe-count =
    { $count ->
        [1] { $count }  Receita
       *[other] { $count }  Receitas
    }

lathe-menu-reagent-slot-examine =  Tem um espaço para um copo ao lado.

lathe-reagent-dispense-no-container = O líquido sai de dentro. { THE($name) } Para o chão!

lathe-menu-result-reagent-display = { $reagent } ({ $amount }u)

lathe-menu-material-display = { $material } ({ $amount })

lathe-menu-tooltip-display = { $amount } de { $material }

lathe-menu-description-display = [italic]{ $description }[/italic]

lathe-menu-material-amount =
    { $amount ->
        [1] { NATURALFIXED($amount, 2) } { $unit }
       *[other] { NATURALFIXED($amount, 2) } { MAKEPLURAL($unit) }
    }

lathe-menu-material-amount-missing =
    { $amount ->
        [1] { NATURALFIXED($amount, 2) } { $unit } de { $material } ([color=red]{ NATURALFIXED($missingAmount, 2) } { $unit }  Desaparecido.[/color])
       *[other] { NATURALFIXED($amount, 2) } { MAKEPLURAL($unit) } de { $material } ([color=red]{ NATURALFIXED($missingAmount, 2) } { MAKEPLURAL($unit) }  Desaparecido.[/color])
    }

lathe-menu-no-materials-message = Sem materiais carregados.

lathe-menu-silo-linked-message = Silo Ligado

lathe-menu-fabricating-message =  Fabricando...

lathe-menu-materials-title =  Materiais

lathe-menu-queue-title =  Construir fila

lathe-menu-delete-fabricating-tooltip = Cancele a impressão do item atual.

lathe-menu-delete-item-tooltip = Cancele a impressão deste lote.

lathe-menu-move-up-tooltip = Mova este lote para frente na fila.

lathe-menu-move-down-tooltip =  Leve este lote de volta para a fila.

lathe-menu-item-single = { $index }. { $name }

lathe-menu-item-batch = { $index }. { $name } ({ $printed }/{ $total })
