# Shown when a stack is examined in details range
comp-stack-examine-detail-count =
    { $count ->
        [one]  Há [color={ $markupCountColor }]{ $count }[/color]  Coisa.
       *[other]  Há [color={ $markupCountColor }]{ $count }[/color]  Coisas.
    } na pilha.

# Stack status control
comp-stack-status = Contagem: [color=white]{ $count }[/color]

# Shown when attempting to add to a stack that is full
comp-stack-already-full = Stack já está cheio.

# Shown when a stack becomes full
comp-stack-becomes-full = Stack está cheio agora.

# Text related to splitting a stack
comp-stack-split =  Você dividiu a pilha.

comp-stack-split-halve =  Metade.

comp-stack-split-too-small = Stack é muito pequeno para dividir.
