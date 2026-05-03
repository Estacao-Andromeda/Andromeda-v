ingestion-you-need-to-hold-utensil =  Você precisa estar segurando { INDEFINITE($utensil) } { $utensil } Para comer isso!

ingestion-try-use-is-empty = { CAPITALIZE(THE($entity)) }  Está vazio!

ingestion-try-use-wrong-utensil =  Você não pode. { $verb } { THE($food) } com { INDEFINITE($utensil) } { $utensil }.

ingestion-remove-mask =  Você precisa tirar o { $entity }  Primeiro.

ingestion-you-cannot-ingest-any-more =  Você não pode. { $verb }  Mais!

ingestion-other-cannot-ingest-any-more = { CAPITALIZE(SUBJECT($target)) }  Não posso. { $verb }  Mais!

ingestion-cant-digest =  Você não pode digerir. { THE($entity) }!

ingestion-cant-digest-other = { CAPITALIZE(SUBJECT($target)) }  Não consigo digerir. { THE($entity) }!

ingestion-verb-food = Comer.

ingestion-verb-drink =  Beba.

edible-nom = Nom. { $flavors }

edible-nom-other = Nom.

edible-slurp = Slurp. { $flavors }

edible-slurp-other = Slurp.

edible-swallow =  Você engole. { THE($food) }

edible-gulp = Gulp. { $flavors }

edible-gulp-other = Gulp.

edible-has-used-storage =  Você não pode. { $verb } { THE($food) } com um item armazenado dentro.

edible-noun-edible = Comestível

edible-noun-food =  Comida

edible-noun-drink =  Beba.

edible-noun-pill =  pílula

edible-verb-edible = Ingerir

edible-verb-food = Coma.

edible-verb-drink =  Beba.

edible-verb-pill =  engolir

edible-force-feed = { CAPITALIZE(THE($user)) }  está tentando fazer você { $verb }  Alguma coisa!

edible-force-feed-success = { CAPITALIZE(THE($user)) } forçá-lo a fazer isso. { $verb }  Alguma coisa! { $flavors }

edible-force-feed-success-user =  Você se alimenta com sucesso. { THE($target) }
