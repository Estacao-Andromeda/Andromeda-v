parse-session-fail =  Não encontrei sessão para '{ $username }'

# - playtime_addoverall
cmd-playtime_addoverall-desc =  Adiciona os minutos especificados para o jogo de um jogador

cmd-playtime_addoverall-help = Uso: { $command }  Nome do usuário

cmd-playtime_addoverall-succeed =  Aumento do tempo total para { $username } para { TOSTRING($time, "dddd\\:hh\\:mm") }

cmd-playtime_addoverall-arg-user =  Nome do usuário

cmd-playtime_addoverall-arg-minutes = * Minutos *

cmd-playtime_addoverall-error-args =  Esperava exatamente dois argumentos.

# - playtime_addrole
cmd-playtime_addrole-desc =  Adiciona os minutos especificados ao papel de um jogador.

cmd-playtime_addrole-help = Uso: { $command }  Nome do usuário:

cmd-playtime_addrole-succeed = - Tempo de jogo para o papel. { $username } / \'{ $role }\' para { TOSTRING($time, "dddd\\:hh\\:mm") }

cmd-playtime_addrole-arg-user =  Nome do usuário

cmd-playtime_addrole-arg-role = *Role>

cmd-playtime_addrole-arg-minutes = * Minutos *

cmd-playtime_addrole-error-args =  Esperava exatamente três argumentos.

# - playtime_getoverall
cmd-playtime_getoverall-desc = Obtém os minutos especificados para o jogo geral de um jogador

cmd-playtime_getoverall-help = Uso: { $command }  Nome do usuário

cmd-playtime_getoverall-success =  Tempo total para { $username } É { TOSTRING($time, "dddd\\:hh\\:mm") }.

cmd-playtime_getoverall-arg-user =  Nome do usuário

cmd-playtime_getoverall-error-args =  Esperava exatamente um argumento.

# - GetRoleTimer
cmd-playtime_getrole-desc =  Ganha todos ou um temporizadores de um jogador

cmd-playtime_getrole-help = Uso: { $command }  Nome do usuário [role]

cmd-playtime_getrole-no =  Não encontrei temporizadores de papéis.

cmd-playtime_getrole-role =  Papel: { $role }, Hora da Brincadeira: { $time }

cmd-playtime_getrole-overall = O jogo é o seguinte: { $time }

cmd-playtime_getrole-succeed =  Hora de brincar para { $username } é: { TOSTRING($time, "dddd\\:hh\\:mm") }.

cmd-playtime_getrole-arg-user =  Nome do usuário

cmd-playtime_getrole-arg-role = *Totalmente*

cmd-playtime_getrole-error-args =  Esperava exatamente um ou dois argumentos.

# - playtime_save
cmd-playtime_save-desc =  Salva os tempos de jogo do jogador para o DB

cmd-playtime_save-help = Uso: { $command }  Nome do usuário

cmd-playtime_save-succeed =  Guardado tempo para brincar { $username }

cmd-playtime_save-arg-user =  Nome do usuário

cmd-playtime_save-error-args =  Esperava exatamente um argumento.

cmd-playtime_flush-desc = Flush rastreadores ativos para serem armazenados no rastreamento de tempo de jogo.

cmd-playtime_flush-help =
    Uso: { $command } [user name]
     Isso causa um flush no armazenamento interno, não é flush para DB imediatamente.

cmd-playtime_flush-error-args =  Esperavam zero ou um argumento.

cmd-playtime_flush-arg-user = [user name]
