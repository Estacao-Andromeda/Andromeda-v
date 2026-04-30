comp-kitchen-spike-begin-hook-self-other = { CAPITALIZE(THE($victim)) }  Começa a arrastar { REFLEXIVE($victim) } em frente { THE($hook) }!

comp-kitchen-spike-begin-hook-other-self =  Você começa a arrastar { CAPITALIZE(THE($victim)) } em frente { THE($hook) }!

comp-kitchen-spike-begin-hook-other = { CAPITALIZE(THE($user)) }  Começa a arrastar { CAPITALIZE(THE($victim)) } em frente { THE($hook) }!

comp-kitchen-spike-hook-self =  Você se jogou em cima { THE($hook) }!

comp-kitchen-spike-hook-self-other = { CAPITALIZE(THE($victim)) }  Joguei. { REFLEXIVE($victim) } "Continue" { THE($hook) }!

comp-kitchen-spike-hook-other-self =  Você jogou. { CAPITALIZE(THE($victim)) } "Continue" { THE($hook) }!

comp-kitchen-spike-hook-other = { CAPITALIZE(THE($user)) }  Joguei. { CAPITALIZE(THE($victim)) } "Continue" { THE($hook) }!

comp-kitchen-spike-begin-unhook-self =  Você começa a se arrastar { THE($hook) }!

comp-kitchen-spike-begin-unhook-self-other = { CAPITALIZE(THE($victim)) }  Começa a arrastar { REFLEXIVE($victim) }  Desligar { THE($hook) }!

comp-kitchen-spike-begin-unhook-other-self =  Você começa a arrastar { CAPITALIZE(THE($victim)) }  Desligar { THE($hook) }!

comp-kitchen-spike-begin-unhook-other = { CAPITALIZE(THE($user)) }  Começa a arrastar { CAPITALIZE(THE($victim)) }  Desligar { THE($hook) }!

comp-kitchen-spike-unhook-self =  Você se safou. { THE($hook) }!

comp-kitchen-spike-unhook-self-other = { CAPITALIZE(THE($victim)) }  Tenho { REFLEXIVE($victim) }  Desligar { THE($hook) }!

comp-kitchen-spike-unhook-other-self =  Você tem { CAPITALIZE(THE($victim)) }  Desligar { THE($hook) }!

comp-kitchen-spike-unhook-other = { CAPITALIZE(THE($user)) }  Tenho { CAPITALIZE(THE($victim)) }  Desligar { THE($hook) }!

comp-kitchen-spike-begin-butcher-self =  Você começa a massacrar { THE($victim) }!

comp-kitchen-spike-begin-butcher = { CAPITALIZE(THE($user)) }  Começa a açougueiro { THE($victim) }!

comp-kitchen-spike-butcher-self =  Você massacrado { THE($victim) }!

comp-kitchen-spike-butcher = { CAPITALIZE(THE($user)) } Abatido { THE($victim) }!

comp-kitchen-spike-unhook-verb =  Soltem-no.

comp-kitchen-spike-hooked = [color=red]{ CAPITALIZE(THE($victim)) }  Está neste ponto![/color]

comp-kitchen-spike-meat-name = { $name } ({ $victim })

comp-kitchen-spike-victim-examine = [color=orange]{ CAPITALIZE(SUBJECT($target)) }  Parece bem magro.[/color]
