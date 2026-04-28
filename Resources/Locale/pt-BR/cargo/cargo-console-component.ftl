cargo-console-menu-title = Console de pedido de carga

cargo-console-menu-account-name-label = Conta:{ " " }

cargo-console-menu-account-name-none-text =  Nenhum.

cargo-console-menu-account-name-format = [bold][color={ $color }]{ $name }[/color][/bold] [font="Monospace"]\[{ $code }\][/font]

cargo-console-menu-shuttle-name-label =  Nome do ônibus:{ " " }

cargo-console-menu-shuttle-name-none-text =  Nenhum.

cargo-console-menu-points-label = Equilíbrio:{ " " }

cargo-console-menu-points-amount = ${ $amount }

cargo-console-menu-shuttle-status-label =  Situação do transporte:{ " " }

cargo-console-menu-shuttle-status-away-text =  Longe.

cargo-console-menu-order-capacity-label =  Capacidade da ordem:{ " " }

cargo-console-menu-call-shuttle-button = Ativar o telepad.

cargo-console-menu-permissions-button = Permissões.

cargo-console-menu-categories-label =  Categorias:{ " " }

cargo-console-menu-search-bar-placeholder =  Busca

cargo-console-menu-requests-label =  Pedidos

cargo-console-menu-orders-label =  Ordens

cargo-console-menu-order-reason-description =  Razões: { $reason }

cargo-console-menu-populate-categories-all-text =  Todos.

cargo-console-menu-populate-orders-cargo-order-row-product-name-text = { $productName } (x{ $orderAmount }) por { $orderRequester } de [color=]{ $accountColor }]{ $account }[/color]

cargo-console-menu-cargo-order-row-approve-button = Aprovar

cargo-console-menu-cargo-order-row-cancel-button =  Cancelar

cargo-console-menu-tab-title-orders =  Ordens

cargo-console-menu-tab-title-funds =  Transferências

cargo-console-menu-account-action-transfer-limit = [bold] Limite de Transferência:[/bold] ${ $limit }

cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold](Ilimitado)[/color]

cargo-console-menu-account-action-select = [bold] Ação Conta:[/bold]

cargo-console-menu-account-action-amount = [bold] Quantidade:[/bold] $

cargo-console-menu-account-action-button =  Transferência

cargo-console-menu-toggle-account-lock-button = Alternar o Limite de Transferência

cargo-console-menu-account-action-option-withdraw = Retirar dinheiro

cargo-console-menu-account-action-option-transfer =  Transferência de fundos para { $code }

# Orders
cargo-console-order-not-allowed =  Acesso não permitido.

cargo-console-station-not-found =  Nenhuma estação disponível.

cargo-console-invalid-product = ID do produto inválido

cargo-console-too-many =  Muitas ordens aprovadas.

cargo-console-snip-snip =  Ordem aparada à capacidade.

cargo-console-insufficient-funds =  Fundos insuficientes (requer $){ $cost })

cargo-console-unfulfilled =  Não há espaço para cumprir a ordem.

cargo-console-trade-station =  Enviado para { $destination }

cargo-console-unlock-approved-order-broadcast = [bold]{ $productName } x{ $orderAmount }[/bold], que custam [bold]{ $cost }[/bold], foi aprovado por [bold]{ $approver }[/bold]

cargo-console-fund-withdraw-broadcast = [bold]{ $name } Retirado { $amount } -Spesos de... { $name1 } \[{ $code1 }\]

cargo-console-fund-transfer-broadcast = [bold]{ $name } Transferido. { $amount } -Spesos de... { $name1 } \[{ $code1 }\] para { $name2 } \[{ $code2 }\][/bold]

cargo-console-fund-transfer-user-unknown =  Desconhecido

cargo-console-paper-reason-default =  Nenhum.

cargo-console-paper-approver-default = Eu

cargo-console-paper-print-name =  Ordem #{ $orderNumber }

cargo-console-paper-print-text = [head=2] Ordem #{ $orderNumber }[/head]
    { "[bold]Item:[/bold]" } { $itemName } (x{ $orderQuantity })
    { "[bold]Requested by:[/bold]" } { $requester }
    
    { "[head=3]Order Information[/head]" }
    { "[bold]Payer[/bold]:" } { $account } [font="Monospace"]\[{ $accountcode }\][/font]
    { "[bold]Approved by:[/bold]" } { $approver }
    { "[bold]Reason:[/bold]" } { $reason }

# Cargo shuttle console
cargo-shuttle-console-menu-title = Console de transporte de carga

cargo-shuttle-console-station-unknown =  Desconhecido

cargo-shuttle-console-shuttle-not-found =  Não encontrado.

cargo-shuttle-console-organics = Detectaram formas de vida orgânicas na nave auxiliar.

cargo-no-shuttle =  Nenhum transporte de carga encontrado!

# Funding allocation console
cargo-funding-alloc-console-menu-title = Consola de Alocação de Financiamento

cargo-funding-alloc-console-label-account = [bold]Conta[/bold]

cargo-funding-alloc-console-label-code = [bold]  Código [/bold]

cargo-funding-alloc-console-label-balance = [bold] Equilíbrio [/bold]

cargo-funding-alloc-console-label-cut = [bold]  Divisão de Receitas (%) [/bold]

cargo-funding-alloc-console-label-primary-cut = A carga é cortada de fundos de fontes não-lockbox (%):

cargo-funding-alloc-console-label-lockbox-cut = A carga é cortada em fundos de vendas de caixa de bloqueio (%):

cargo-funding-alloc-console-label-help-non-adjustible =  Carga recebe { $percent }O resto está dividido como especificado abaixo:

cargo-funding-alloc-console-label-help-adjustible =  Os fundos remanescentes de fontes não-locadoras são distribuídos como especificado abaixo:

cargo-funding-alloc-console-button-save =  Salvar mudanças

cargo-funding-alloc-console-label-save-fail = [bold]Divisões de Receita Invalidas![/bold] [color=red]({ $pos ->
        [1] +
       *[-1] -
    }{ $val }%)[/color]

# Slip template
cargo-acquisition-slip-body = [head=3]Detalhamento de ativos[/head]
    { "[bold]Product:[/bold]" } { $product }
    { "[bold]Description:[/bold]" } { $description }
    { "[bold]Unit cost:[/bold" }] ${ $unit }
    { "[bold]Amount:[/bold]" } { $amount }
    { "[bold]Cost:[/bold]" } ${ $cost }
    
    { "[head=3]Purchase Detail[/head]" }
    { "[bold]Orderer:[/bold]" } { $orderer }
    { "[bold]Reason:[/bold]" } { $reason }
