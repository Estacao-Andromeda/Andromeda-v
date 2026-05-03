# Examine text after when they're holding something (in-hand)
comp-hands-examine = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) } - Não, não, não. { $items }.

comp-hands-examine-empty = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) }  Não está segurando nada.

comp-hands-examine-wrapper = { INDEFINITE($item) } [color=paleturquoise]{ $item }[/color]

hands-system-blocked-by = Bloqueado por
