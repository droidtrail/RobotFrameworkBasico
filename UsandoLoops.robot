*** Settings ***
Documentation    Vamos aprender a fazer LOOPS usando o Robot Framework

*** Variables ***
###Inicio de lista
@{MINHA_LISTA_DE_FRUTAS}     maça    abacaxi    banana    morango    laranja    uva

*** Test Cases ***
Teste de REPEAT KEYWORD
    [Documentation]    Chama uma mesma keyword várias vezes
    Usando Repeat keyword

Teste de FOR do tipo IN RANGE
    [Documentation]  faz um loop dentro de um intervalo que você passar
    Usando FOR IN RANGE

Teste de FOR do tipo IN
    [Documentation]  Faz um loop percorrendo a lista que você passar
    Usando FOR IN

Teste de FOR do tipo IN ENUMERATE
    [Documentation]  faz um loop percorrendo a lista que você passar e percorre o indice da lista
    Usando FOR IN ENUMERATE
Teste de sair do FOR
    [Documentation]  Você controla quaqndo o FOR deve ser encerrar antes de terminar todos os LOOPS
    Usando FOR IN com EXIT FOR LOOP IF

*** Keywords ***
Usando Repeat Keyword
    Log To Console    ${\n}
    Repeat Keyword    8x    Log To Console    Minha repetição da keyword

Usando FOR IN RANGE    
    Log To Console    ${\n}
    FOR  ${CONTADOR}  IN RANGE  0  5
        Log To Console    Minha posição agora é: ${CONTADOR}
        Log  Minha posição agora é: ${CONTADOR}
    END

Usando FOR IN
    Log To Console    ${\n}
    FOR  ${FRUTA}  IN  @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${FRUTA}
        No Operation
    END

Usando FOR IN ENUMERATE
    Log To Console    ${\n}
    FOR  ${INDICE}  ${FRUTA}  IN ENUMERATE  @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTA}!
        No Operation
    END

Usando FOR IN com EXIT FOR LOOP IF
    Log To Console    ${\n}
    FOR  ${INDICE}  ${FRUTA}  IN ENUMERATE  @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTA}!
        Exit For Loop If    '${FRUTA}'=='banana'
    END
    