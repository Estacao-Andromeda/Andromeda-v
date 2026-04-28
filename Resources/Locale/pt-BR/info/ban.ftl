# ban
cmd-ban-desc = Bani alguém.

cmd-ban-help = Uso: banir o nome ou o ID do usuário [duration in minutes, leave out or 0 for permanent ban]

cmd-ban-player =  Incapaz de encontrar um jogador com esse nome.

cmd-ban-invalid-minutes = { $minutes }  Não é uma quantidade válida de minutos!

cmd-ban-invalid-severity = { $severity }  Não é uma gravidade válida!

cmd-ban-invalid-arguments =  Quantidade inválida de argumentos

cmd-ban-hint = <Nome/ID do usuário>

cmd-ban-hint-reason = # Razão #

cmd-ban-hint-duration = [duration]

cmd-ban-hint-severity = [severity]

cmd-ban-hint-duration-1 =  Permanente

cmd-ban-hint-duration-2 = 1 dia

cmd-ban-hint-duration-3 = 3 dias.

cmd-ban-hint-duration-4 = 1 semana

cmd-ban-hint-duration-5 = 2 semanas

cmd-ban-hint-duration-6 = 1 mês.

# ban panel
cmd-banpanel-desc =  Abre o painel de proibição.

cmd-banpanel-help = Uso: banpanel [name or user guid]

cmd-banpanel-server =  Isso não pode ser usado no console do servidor

cmd-banpanel-player-err = O jogador não foi encontrado.

# listbans
cmd-banlist-desc =  Lista as proibições de um usuário.

cmd-banlist-help = Uso: banlist <name or user ID>

cmd-banlist-empty =  Nenhuma proibição ativa encontrada para { $user }

cmd-banlist-hint = <Nome/ID do usuário>

cmd-ban_exemption_update-desc =  Estabelecer uma isenção para um tipo de proibição de um jogador.

cmd-ban_exemption_update-help = Uso: ban exemption update <player> <flag> [<flag> [...]] Especificar várias bandeiras para dar a um jogador múltiplas bandeiras de isenção de ban.

cmd-ban_exemption_update-nargs =  Esperava pelo menos 2 argumentos.

cmd-ban_exemption_update-locate =  Incapaz de localizar o jogador.{ $player }'.

cmd-ban_exemption_update-invalid-flag =  Bandeira inválida{ $flag }'.

cmd-ban_exemption_update-success =  Bandeiras de isenção de proibição atualizadas para '{ $player }' ({ $uid }).

cmd-ban_exemption_update-arg-player =  Jogador

cmd-ban_exemption_update-arg-flag =  Legendas em Série Fora de Série!

cmd-ban_exemption_get-desc =  Mostrar isenção de proibição para um certo jogador.

cmd-ban_exemption_get-help = Uso: ban exception get <player>

cmd-ban_exemption_get-nargs =  Esperava exatamente um argumento.

cmd-ban_exemption_get-none = O usuário não está isento de nenhuma proibição.

cmd-ban_exemption_get-show = O usuário está isento das seguintes bandeiras de proibição: { $flags }.

cmd-ban_exemption_get-arg-player =  Jogador

# Ban panel
ban-panel-title =  Painel de Banning

ban-panel-player =  Jogador

ban-panel-ip = IP

ban-panel-hwid = HWID

ban-panel-reason =  Razão

ban-panel-last-conn =  Usar IP e HWID da última conexão?

ban-panel-submit = Ban.

ban-panel-confirm =  Tem certeza?

ban-panel-tabs-basic =  Informações básicas

ban-panel-tabs-reason =  Razão

ban-panel-tabs-players =  Lista de Jogadores

ban-panel-tabs-role =  Informações sobre a proibição de papéis

ban-panel-no-data =  Você deve fornecer um usuário, IP ou HWID para banir

ban-panel-invalid-ip = O endereço IP não pode ser analisado.

ban-panel-select =  Selecione o tipo

ban-panel-server = Banição do servidor

ban-panel-role = Proibição de papéis

ban-panel-minutes = Minutos

ban-panel-hours =  Horas

ban-panel-days =  Dias

ban-panel-weeks =  Semanas

ban-panel-months = Meses.

ban-panel-years = Anos

ban-panel-permanent =  Permanente

ban-panel-ip-hwid-tooltip =  Deixe vazio e verifique a caixa de seleção abaixo para usar os detalhes da última conexão.

ban-panel-severity = Severidade:

ban-panel-erase =  Apagar mensagens de bate-papo e jogador de rodada

ban-panel-expiry-error = Err

# Ban string
server-ban-string = { $admin }  criado um { $severity } A proibição do servidor de gravidade que expira. { $expires } em [{ $name }, { $ip }, { $hwid }...com razão. { $reason }

server-ban-string-no-pii = { $admin }  criado um { $severity } A proibição do servidor de gravidade que expira. { $expires } para { $name } com razão: { $reason }

server-ban-string-never =  Nunca.

# Kick on ban
ban-kick-reason =  Você foi banido.
