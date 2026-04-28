replay-loading =  Carregando.{ $cur }/{ $total })

replay-loading-reading = Lendo arquivos

replay-loading-processing = Processando arquivos

replay-loading-spawning =  Entidades de Despojos

replay-loading-initializing =  Iniciando Entidades

replay-loading-starting =  Começando as Entidades

replay-loading-failed =
     Não foi possível carregar o replay.
    { $reason }

replay-loading-retry =  Tente carregar com mais tolerância de exceção, pode causar bolhas!

replay-loading-cancel =  Cancelar

# Main Menu
replay-menu-subtext = Replay Client

replay-menu-load =  Carregar a repetição selecionada

replay-menu-select =  Selecione uma repetição

replay-menu-open =  Abrir pasta de repetição

replay-menu-none =  Nenhuma repetição encontrada.

# Main Menu Info Box
replay-info-title = Reproduzir informações

replay-info-none-selected = Sem repetição selecionada.

replay-info-invalid = [color=red] Repetição inválida selecionada[/color]

replay-info-info =
    { "[" }Selecionado:[/color]  { $name } ({ $file })
    { "[" } Hora:[/color]   { $time }
    { "[" }- É o que eu quero.[/color]   { $roundId }
    { "[" }- Não, não.[/color]   { $duration }
    { "[" }Cor=cinza] Garfo:[/color]   { $forkId }
    { "[" }-Versão:[/color]   { $version }
    { "[" }- Não, não.[/color]   { $engVersion }
    { "[" }- Tipo Hash:[/color]   { $hash }
    { "[" }- Comp Hash:[/color]   { $compHash }

# Replay selection window
replay-menu-select-title =  Selecione Replay

# Replay related verbs
replay-verb-spectate = Espectar

# command
cmd-replay-spectate-help = Replay spectate [optional entity]

cmd-replay-spectate-desc = Anexa ou descola o jogador local a uma entidade.

cmd-replay-spectate-hint =  Entidade OpcionalUid

cmd-replay-toggleui-desc = Alterna o controle de interface.
