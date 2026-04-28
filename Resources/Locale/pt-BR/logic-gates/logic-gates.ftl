logic-gate-examine =  Está atualmente. { INDEFINITE($gate) } { $gate } Portão.

logic-gate-cycle =  Mudado para { INDEFINITE($gate) } { $gate } Portão

power-sensor-examine =
     Está verificando a rede. { $output ->
        [true]  saída
       *[false]  entrada
    }  Bateria.

power-sensor-voltage-examine =  Está verificando o { $voltage }  Rede de energia.

power-sensor-switch =
     Mudamos para verificar a rede. { $output ->
        [true]  saída
       *[false]  entrada
    }  Bateria.

power-sensor-voltage-switch =  Rede mudada para { $voltage }!
