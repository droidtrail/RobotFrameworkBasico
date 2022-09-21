*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources.robot
# Suite Setup      Remove Files    ./resultados/*.png
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]             menus    categorias
    Dado que eu estou na home page da Amazon.com.bR
    Quando acessar o menu "Venda na Amazon"
    Então o título da página deve ficar "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    # E o texto "Mais Vendidos em Esporte" deve ser exibido na página
    
# Caso de teste 02 - Pesquisa de Produto
#     [Documentation]    Esse teste verifica a busca de um produto
#     [Tags]             busca_produtos    lista_busca


    

    