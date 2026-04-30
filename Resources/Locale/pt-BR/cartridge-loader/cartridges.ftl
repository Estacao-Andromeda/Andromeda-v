device-pda-slot-component-slot-name-cartridge = Cartucho

default-program-name =  Programa

notekeeper-program-name =  Guarda-note

nano-task-program-name = NanoTask

news-read-program-name =  Notícias da estação

crew-manifest-program-name = Manifesto de tripulação

crew-manifest-cartridge-loading =  Carregando...

net-probe-program-name = NetProbe.

net-probe-scan = Escaneado { $device }!

net-probe-label-name =  Nome

net-probe-label-address =  Endereço

net-probe-label-frequency =  Frequência

net-probe-label-network =  Rede

log-probe-program-name = LogProbe

log-probe-scan = -O que está fazendo? { $device }!

log-probe-label-time =  Tempo

log-probe-label-accessor = Acessado por

log-probe-label-number = #

log-probe-print-button =  Imprimir os Diários

log-probe-printout-device =  Dispositivo digitalizado: { $name }

log-probe-printout-header =  Últimos registros:

log-probe-printout-entry = #{ $number } / { $time } / { $accessor }

astro-nav-program-name = AstroNav

med-tek-program-name = MedTek

nano-task-ui-heading-high-priority-tasks =
    { $amount ->
        [zero] Sem tarefas prioritárias.
        [one] 1 Tarefa de Alta Prioridade
       *[other] { $amount } Tarefas de Alta Prioridade
    }

nano-task-ui-heading-medium-priority-tasks =
    { $amount ->
        [zero] Sem Tarefas Prioritárias Médias
        [one] 1 Tarefa Prioritária Média
       *[other] { $amount } Tarefas Prioritárias Médias
    }

nano-task-ui-heading-low-priority-tasks =
    { $amount ->
        [zero] Sem Tarefas de Baixa Prioridade
        [one] 1 Tarefa Prioritária Baixa
       *[other] { $amount } Tarefas de baixa prioridade
    }

nano-task-ui-done =  Feito.

nano-task-ui-revert-done = Desfazer

nano-task-ui-priority-low =  Baixo.

nano-task-ui-priority-medium =  Médio.

nano-task-ui-priority-high = Alto.

nano-task-ui-cancel =  Cancelar

nano-task-ui-print =  Imprima

nano-task-ui-delete =  Apagar

nano-task-ui-save =  Salve

nano-task-ui-new-task = Nova Tarefa

nano-task-ui-description-label =  Descrição:

nano-task-ui-description-placeholder =  Pegue algo importante.

nano-task-ui-requester-label =  Solicitante:

nano-task-ui-requester-placeholder = John Nanotrasen

nano-task-ui-item-title =  Editar tarefa

nano-task-printed-description = [bold] Descrição[/bold]: { $description }

nano-task-printed-requester = [bold]-Pedido.[/bold]: { $requester }

nano-task-printed-high-priority = [bold]Prioridade[/bold]: [color=red]Alto.[/color]

nano-task-printed-medium-priority = [bold]Prioridade[/bold]: Médio

nano-task-printed-low-priority = [bold]Prioridade[/bold] Baixo

# Wanted list cartridge
wanted-list-program-name =  Lista de procurados

wanted-list-label-no-records =  Está tudo bem, cowboy.

wanted-list-search-placeholder =  Procure pelo nome e status.

wanted-list-age-label = [color=darkgray] Idade:[/color] [color=white]{ $age }[/color]

wanted-list-job-label = [color=darkgray] Trabalho:[/color] [color=white]{ $job }[/color]

wanted-list-species-label = [color=darkgray] Espécie:[/color] [color=white]{ $species }[/color]

wanted-list-gender-label = [color=darkgray] Sexo:[/color] [color=white]{ $gender }[/color]

wanted-list-reason-label = [color=darkgray] Razão:[/color] [color=white]{ $reason }[/color]

wanted-list-unknown-reason-label =  Razão desconhecida

wanted-list-initiator-label = [color=darkgray] Iniciador:[/color] [color=white]{ $initiator }[/color]

wanted-list-unknown-initiator-label =  Iniciador desconhecido

wanted-list-status-label = [color=darkgray] Situação:[/color] { $status ->
        [suspected] [color=yellow]Suspeita[/color]
        [wanted] [color=red] Procurado.[/color]
        [detained] [color=#b18644]Detido.[/color]
        [paroled] [color=green]- Sim.[/color]
        [discharged] [color=green]Descarregada.[/color]
        [hostile] [color=darkred]Hostis.[/color]
        [eliminated] [color=gray]Eliminou.[/color]
       *[other]  Nenhum.
    }

wanted-list-history-table-time-col =  Tempo

wanted-list-history-table-reason-col = Crime

wanted-list-history-table-initiator-col =  Iniciador
