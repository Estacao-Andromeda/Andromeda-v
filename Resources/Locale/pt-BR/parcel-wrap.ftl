parcel-wrap-verb-wrap = Enrole

parcel-wrap-verb-unwrap = Desembrulhar

parcel-wrap-popup-parcel-destroyed = O embrulho contendo { THE($contents) }  Está destruído!

parcel-wrap-popup-being-wrapped = { CAPITALIZE(THE($user)) }  Está tentando embrulhá-lo!

parcel-wrap-popup-being-wrapped-self =  Você começa a embrulhar as encomendas.

# Shown when parcel wrap is examined in details range
parcel-wrap-examine-detail-uses =
    { $uses ->
        [one] There is [color={ $markupUsesColor }]{ $uses }[/color] Use a esquerda.
       *[other] There are [color={ $markupUsesColor }]{ $uses }[/color]  usa esquerda
    }.
