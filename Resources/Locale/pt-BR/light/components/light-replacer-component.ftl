# Shown when player tries to replace light, but there is no lights left
comp-light-replacer-missing-light =  Não há luzes em { THE($light-replacer) }.

# Shown when player inserts light bulb inside light replacer
comp-light-replacer-insert-light =  Você insere { $bulb } em { THE($light-replacer) }.

# Shown when player tries to insert in light replacer brolen light bulb
comp-light-replacer-insert-broken-light =  Não pode inserir luzes quebradas!

# Shown when player refill light from light box
comp-light-replacer-refill-from-storage =  Você reenche. { THE($light-replacer) }.

comp-light-replacer-no-lights =  Está vazio.

comp-light-replacer-has-lights =  Contém o seguinte:

comp-light-replacer-light-listing =
    { $amount ->
        [one] [color=yellow]{ $amount }[/color] [color=gray]{ $name }[/color]
       *[other] [color=yellow]{ $amount }[/color] [color=gray]{ $name }S[/color]
    }
