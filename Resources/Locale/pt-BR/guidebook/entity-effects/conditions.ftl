entity-condition-guidebook-total-damage =
    { $max ->
        [2147483648]  Ele tem pelo menos { NATURALFIXED($min, 2) } Danos totais
       *[other]
            { $min ->
                [0]  Tem no máximo { NATURALFIXED($max, 2) } Danos totais
               *[other]  Tem entre { NATURALFIXED($min, 2) } e { NATURALFIXED($max, 2) } Danos totais
            }
    }

entity-condition-guidebook-type-damage =
    { $max ->
        [2147483648]  Ele tem pelo menos { NATURALFIXED($min, 2) } de { $type } Dano
       *[other]
            { $min ->
                [0]  Tem no máximo { NATURALFIXED($max, 2) } de { $type } Dano
               *[other]  Tem entre { NATURALFIXED($min, 2) } e { NATURALFIXED($max, 2) } de { $type } Dano
            }
    }

entity-condition-guidebook-group-damage =
    { $max ->
        [2147483648]  Ele tem pelo menos { NATURALFIXED($min, 2) } de { $type } Dano.
       *[other]
            { $min ->
                [0]  Tem no máximo { NATURALFIXED($max, 2) } de { $type } Dano.
               *[other]  Tem entre { NATURALFIXED($min, 2) } e { NATURALFIXED($max, 2) } de { $type } Dano
            }
    }

entity-condition-guidebook-total-hunger =
    { $max ->
        [2147483648] O alvo tem pelo menos { NATURALFIXED($min, 2) }  fome total
       *[other]
            { $min ->
                [0] O alvo tem no máximo { NATURALFIXED($max, 2) }  fome total
               *[other] O alvo tem entre { NATURALFIXED($min, 2) } e { NATURALFIXED($max, 2) }  fome total
            }
    }

entity-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648]  Há pelo menos { NATURALFIXED($min, 2) } Você de { $reagent }
       *[other]
            { $min ->
                [0]  Há, no máximo, { NATURALFIXED($max, 2) } Você de { $reagent }
               *[other]  Há entre { NATURALFIXED($min, 2) } Você e eu... { NATURALFIXED($max, 2) } Você de { $reagent }
            }
    }

entity-condition-guidebook-mob-state-condition = A multidão é { $state }

entity-condition-guidebook-job-condition = O trabalho do alvo é... { $job }

entity-condition-guidebook-solution-temperature =
    A temperatura da solução é { $max ->
        [2147483648]  Pelo menos. { NATURALFIXED($min, 2) }K
       *[other]
            { $min ->
                [0] no máximo. { NATURALFIXED($max, 2) }K
               *[other] entre { NATURALFIXED($min, 2) }K e { NATURALFIXED($max, 2) }K
            }
    }

entity-condition-guidebook-body-temperature =
    A temperatura do corpo é { $max ->
        [2147483648]  Pelo menos. { NATURALFIXED($min, 2) }K
       *[other]
            { $min ->
                [0] no máximo. { NATURALFIXED($max, 2) }K
               *[other] entre { NATURALFIXED($min, 2) }K e { NATURALFIXED($max, 2) }K
            }
    }

entity-condition-guidebook-organ-type =
    O órgão metabolizador. { $shouldhave ->
        [true] É
       *[false]  Não é.
    } { INDEFINITE($name) } { $name }  órgão

entity-condition-guidebook-has-tag =
    O alvo { $invert ->
        [true]  não tem
       *[false]  Tem
    } A etiqueta { $tag }

entity-condition-guidebook-this-reagent = Este reagente.

entity-condition-guidebook-breathing =
    O metabolizador é { $isBreathing ->
        [true]  Respirando normalmente.
       *[false]  sufocante
    }

entity-condition-guidebook-internals =
    O metabolizador é { $usingInternals ->
        [true]  usando internos
       *[false]  respiração ar atmosférico
    }
