*** Settings ***
Documentation    Exemplo de tipode variáveis - LISTA

*** Variables ***
#Tipo dicionario
&{MES_DIA}    janeiro=31    fevereiro=29    março=31    abril=30    maio=31    junho=30    julho=31    agosto=31    setembro=30    outubro=31    novembro=30    dezembro=31

*** Test Cases ***
Imprimir lista com os meses do meses do ano
    Log    Mês com ${MES_DIA.janeiro} dias
    Log    Mês com ${MES_DIA.fevereiro} dias
    Log    Mês com ${MES_DIA.março} dias
    Log    Mês com ${MES_DIA.abril} dias
    Log    Mês com ${MES_DIA.maio} dias
    Log    Mês com ${MES_DIA.junho} dias
    Log    Mês com ${MES_DIA.julho} dias
    Log    Mês com ${MES_DIA.agosto} dias
    Log    Mês com ${MES_DIA.setembro} dias
    Log    Mês com ${MES_DIA.outubro} dias
    Log    Mês com ${MES_DIA.novembro} dias
    Log    Mês com ${MES_DIA.dezembro} dias


