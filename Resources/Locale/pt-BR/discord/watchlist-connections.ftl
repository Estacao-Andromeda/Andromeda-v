discord-watchlist-connection-header =
    { $players ->
        [one] { $players }  jogador em uma lista de vigilância tem
       *[other] { $players }  Os jogadores da lista de vigilância têm
    }  conectados a { $serverName }

discord-watchlist-connection-entry =
    - { $playerName } com mensagem "{ $message }"{ $expiry ->
        [0] { "" }
       *[other] { " " }(Expira:{ $expiry }* R>
    }{ $otherWatchlists ->
        [0] { "" }
        [one] { " " }e { $otherWatchlists }  Outra lista de vigilância
       *[other] { " " }e { $otherWatchlists }  Outras listas de vigilância
    }
