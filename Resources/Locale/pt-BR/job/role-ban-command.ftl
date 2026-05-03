cmd-roleban-desc = Bani um jogador de um papel

cmd-roleban-help = Uso: roleban <nome ou ID do usuário> <job> <razão> [duration in minutes, leave out or 0 for permanent ban]

cmd-roleban-hint-1 = <Nome ou ID do usuário>

cmd-roleban-hint-2 = * Trabalho *

cmd-roleban-hint-3 = # Razão #

cmd-roleban-hint-4 = [duration in minutes, leave out or 0 for permanent ban]

cmd-roleban-hint-5 = [severity]

cmd-roleban-hint-duration-1 =  Permanente

cmd-roleban-hint-duration-2 = 1 dia

cmd-roleban-hint-duration-3 = 3 dias.

cmd-roleban-hint-duration-4 = 1 semana

cmd-roleban-hint-duration-5 = 2 semanas

cmd-roleban-hint-duration-6 = 1 mês.

cmd-roleunban-desc =  Perdoe a proibição de um jogador.

cmd-roleunban-help = Uso: roleunban <role ban id>

cmd-roleunban-unable-to-parse-id =
     Incapaz de analisar { $id }  como um ban id inteiro.
    { $help }

cmd-roleunban-hint-1 = *Role ban id>

cmd-rolebanlist-desc =  Lista as proibições de papéis do usuário

cmd-rolebanlist-help = Uso: <nome ou ID do usuário> [include unbanned]

cmd-rolebanlist-hint-1 = <Nome ou ID do usuário>

cmd-rolebanlist-hint-2 = [include unbanned]

cmd-roleban-minutes-parse = { $time }  Não é uma quantidade válida de minutos.{ $help }

cmd-roleban-severity-parse = ${ severity }  Não é uma gravidade válida.{ $help }.

cmd-roleban-arg-count = É uma quantidade inválida de argumentos.

cmd-roleban-job-parse =  Trabalho { $job }  Não existe.

cmd-roleban-name-parse =  Incapaz de encontrar um jogador com esse nome.

cmd-roleban-existing = { $target }  Já tem uma proibição de papel para { $role }.

cmd-roleban-success =  Papel banido { $target } De { $role } com razão { $reason } { $length }.

cmd-roleban-inf =  permanentemente

cmd-roleban-until =  até que { $expires }

# Department bans
cmd-departmentban-desc = Bani um jogador dos papéis que compõem um departamento

cmd-departmentban-help = Uso: Departmentban ou ID do usuário [duration in minutes, leave out or 0 for permanent ban]
