game-ticker-restart-round = Recomeçando a ronda...

game-ticker-start-round = A rodada está começando agora...

game-ticker-start-round-cannot-start-game-mode-fallback =  Não foi possível começar. { $failedGameMode } - O que é isso? { $fallbackMode }...

game-ticker-start-round-cannot-start-game-mode-restart =  Não foi possível começar. { $failedGameMode } Recomeçando a rodada...

game-ticker-start-round-invalid-map =  Mapa selecionado { $map } É inelegível para o gamemode. { $mode }Gamemode pode não funcionar como pretendido...

game-ticker-unknown-role =  Desconhecido

game-ticker-delay-start = O começo foi adiado para { $seconds }  segundos.

game-ticker-pause-start = O começo foi interrompido.

game-ticker-pause-start-resumed = A contagem regressiva de início está agora retomada.

game-ticker-player-join-game-message = Se é a primeira vez que joga, leia as regras do jogo e não tenha medo de pedir ajuda no LOOC ou OOC (normalmente disponível apenas entre as rodadas).

game-ticker-get-info-text =
    Oi, e bem-vindos ao [color=white] Estação Espacial 14![/color]
    A rodada atual é: [color=white]#{ $roundId }[/color]
    A contagem atual é: [color=white]{ $playerCount }[/color]
    O mapa atual é: [color=white]{ $mapName }[/color]
    O modo de jogo atual é: [color=white]{ $gmTitle }[/color]
    >[color=yellow]{ $desc }[/color]

game-ticker-get-info-preround-text =
    Oi, e bem-vindos ao [color=white] Estação Espacial 14![/color]
    A rodada atual é: [color=white]#{ $roundId }[/color]
    A contagem atual é: [color=white]{ $playerCount }[/color] ([color=white]{ $readyCount }[/color] { $readyCount ->
        [one] É
       *[other] são
    } O mapa atual é: [color=white]{ $mapName }[/color]
    O modo de jogo atual é: [color=white]{ $gmTitle }[/color]
    >[color=yellow]{ $desc }[/color]

game-ticker-no-map-selected = [color=yellow] Mapa ainda não selecionado![/color]

game-ticker-player-no-jobs-available-when-joining =  Quando tentavam entrar no jogo, não havia empregos disponíveis.

# Displayed in chat to admins when a player joins
player-join-message =  Jogador { $name } -Juntos.

player-first-join-message =  Jogador { $name } se juntou pela primeira vez.

# Displayed in chat to admins when a player leaves
player-leave-message =  Jogador { $name }  Esquerda.

latejoin-arrival-announcement = { $character } ({ $job } Chegou à estação!

latejoin-arrival-announcement-special = { $job } { $character } No convés!

latejoin-arrival-sender =  Estação.

latejoin-arrivals-direction =  Uma nave te transferindo para sua estação chegará em breve.

latejoin-arrivals-direction-time =  Uma nave te transferindo para sua estação chegará. { $time }.

latejoin-arrivals-dumped-from-shuttle =  Uma força misteriosa impede que você saia com a nave auxiliar.

latejoin-arrivals-teleport-to-spawn =  Uma força misteriosa te teletransporta para fora da nave auxiliar.

preset-not-enough-ready-players =  Não posso começar. { $presetName } Requer { $minimumPlayers }  Jogadores, mas temos { $readyPlayersCount }.

preset-no-one-ready =  Não posso começar. { $presetName } Nenhum jogador está pronto.

game-run-level-PreRoundLobby = Lobby pré-round

game-run-level-InRound = Em volta

game-run-level-PostRound = -Posto em volta.
