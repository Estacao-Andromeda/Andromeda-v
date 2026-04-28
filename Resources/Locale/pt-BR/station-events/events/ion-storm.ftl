station-event-ion-storm-start-announcement =  Tempestade de íons detectada perto da estação.

ion-storm-law-scrambled-number = [font="Monospace"][Taxa de compressão = 250 comprimento ={ $length } Chars="@###$$&%!01"/][/font]

ion-storm-you =  Você

ion-storm-the-station = A ESTAÇÃO

ion-storm-the-crew = A CREVE

ion-storm-the-job = O { $job }

ion-storm-clowns = CLOWNS

ion-storm-heads = CHEGADAS DE PESSOAL

ion-storm-crew = CREW

ion-storm-people =  PESSOAS

ion-storm-adjective-things = { $adjective } COISAS

ion-storm-x-and-y = { $x } E, E, { $y }

# joined is short for {$number} {$adjective}
# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station =  Há { $joined } { $subjects } NA ESTAÇÃO

ion-storm-law-call-shuttle = O ônibus deve ser chamado por causa de { $joined } { $subjects } NA ESTAÇÃO

ion-storm-law-crew-are = O { $who }  Agora são. { $joined } { $subjects }

ion-storm-law-subjects-harmful = { $adjective } { $subjects } São prejudiciais para a tripulação

ion-storm-law-must-harmful =  Aqueles que { $must } São prejudiciais para a tripulação

# thing is a concept or action
ion-storm-law-thing-harmful = { $thing } É dificultosa para a tripulação

ion-storm-law-job-harmful = { $adjective } { $job } São prejudiciais para a tripulação

# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = TINHA { $adjective } { $thing } É dificultosa para a tripulação

ion-storm-law-not-having-harmful =  NÃO TENDO { $adjective } { $thing } É dificultosa para a tripulação

# thing is a concept or require
ion-storm-law-requires =
    { $who } { $plural ->
        [true] REQUISITO
       *[false] REQUISITOS
    } { $thing }

ion-storm-law-requires-subjects =
    { $who } { $plural ->
        [true] REQUISITO
       *[false] REQUISITOS
    } { $joined } { $subjects }

ion-storm-law-allergic =
    { $who } { $plural ->
        [true] ARE
       *[false] É
    } { $severity } ALERGÉTICO PARA { $allergy }

ion-storm-law-allergic-subjects =
    { $who } { $plural ->
        [true] ARE
       *[false] É
    } { $severity } ALERGÉTICO PARA { $adjective } { $subjects }

ion-storm-law-feeling = { $who } { $feeling } { $concept }

ion-storm-law-feeling-subjects = { $who } { $feeling } { $joined } { $subjects }

ion-storm-law-you-are =  Você é agora { $concept }

ion-storm-law-you-are-subjects =  Você é agora { $joined } { $subjects }

ion-storm-law-you-must-always =  Você deve sempre { $must }

ion-storm-law-you-must-never =  Você nunca deve { $must }

ion-storm-law-eat = O { $who }  Deve COMER { $adjective } { $food }  Sobreviver

ion-storm-law-drink = O { $who }  Deve beber { $adjective } { $drink }  Sobreviver

ion-storm-law-change-job = O { $who }  Agora são. { $adjective } { $change }

ion-storm-law-highest-rank = O { $who } SÃO OS CREMEMEMBROS MAIS ALTOS

ion-storm-law-lowest-rank = O { $who }  Agora são os mais baixos tripulantes de ranning

ion-storm-law-crew-must = O { $who }  Deve { $must }

ion-storm-law-crew-must-go = O { $who }  Deve ir para { $area }

ion-storm-part =
    { $part ->
        [true]  PARTE
       *[false]  NÃO PARTE
    }

# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 =  Apenas o { $who } ARE { $part } DA CREW

ion-storm-law-crew-only-2 =  Apenas o { $who } E, E, { $other } ARE { $part } DA CREW

ion-storm-law-crew-only-subjects = SOMENTE { $adjective } { $subjects } ARE { $part } DA CREW

ion-storm-law-crew-must-do =  Só aqueles que { $must } ARE { $part } DA CREW

ion-storm-law-crew-must-have =  Só aqueles que têm { $adjective } { $objects } ARE { $part } DA CREW

ion-storm-law-crew-must-eat =  Só aqueles que comem { $adjective } { $food } ARE { $part } DA CREW

ion-storm-law-harm =  Você deve ferir { $who } E não permitir que eles, através da inação, escapem do perigo

ion-storm-law-protect =  Você nunca deve machucar { $who } E não permitir que eles, através da inação, venham a ferir

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = { $concept } É { $verb } { $subjects }
