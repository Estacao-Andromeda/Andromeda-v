# Shown when greeted with the Suspicion role
suspicion-role-greeting =  Você é um... { $roleName }!

# Shown when greeted with the Suspicion role
suspicion-objective =  Objetivo: { $objectiveText }

# Shown when greeted with the Suspicion role
suspicion-partners-in-crime =
    { $partnersCount ->
        [zero]  Boa sorte!
        [one]  Seu parceiro no crime é { $partnerNames }.
       *[other]  Seus parceiros no crime são { $partnerNames }.
    }
