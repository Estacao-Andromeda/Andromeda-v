ore-silo-ui-title = Material Silo

ore-silo-ui-label-clients =  Máquinas

ore-silo-ui-label-mats =  Materiais

ore-silo-ui-itemlist-entry =
    { $linked ->
        [true] { "[Linked] " }
       *[False] { "" }
    } { $name } ({ $beacon }) { $inRange ->
        [true] { "" }
       *[false] (Fora de alcance)
    }
