*** Settings ***
Documentation    Exemplo de tipode variáveis - LISTA

*** Variables ***
#Tipo lista
@{MES_ANO}    Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

*** Test Cases ***
Imprimir lista com os meses do meses do ano
    Log    Mês de: ${MES_ANO[0]}
    Log    Mês de: ${MES_ANO[1]}
    Log    Mês de: ${MES_ANO[2]}
    Log    Mês de: ${MES_ANO[3]}
    Log    Mês de: ${MES_ANO[4]}
    Log    Mês de: ${MES_ANO[5]}
    Log    Mês de: ${MES_ANO[6]}
    Log    Mês de: ${MES_ANO[7]}
    Log    Mês de: ${MES_ANO[8]}
    Log    Mês de: ${MES_ANO[9]}
    Log    Mês de: ${MES_ANO[10]}
    Log    Mês de: ${MES_ANO[11]}


