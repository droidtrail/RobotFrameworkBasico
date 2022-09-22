*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources.robot
# Suite Setup      Remove Files    ./resultados/*.png
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
# Caso de teste 01 - Acesso ao menu "Eletrônicos"
#     [Documentation]    Esse teste verifica o menu eletrônicos do site da Amazon.com.br
#     ...                e verifica a categoria Computadores e Informática
#     [Tags]             menus    categorias
#     Acessar a home page do site Amazon.com.br
#     Entrar no menu "Venda na Amazon"
#     Verificar se aparece a frase "Mais Vendidos em Eletrônicos"
#     Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
#     Verificar se aparece a categoria "Mais Vendidos em Esporte"

# Caso de teste 02 - Pesquisa de Produto
#     [Documentation]    Esse teste verifica a busca de um produto
#     [Tags]             busca_produtos    lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se está listando o produto "Xbox Series S – Pacote Fortnite e Rocket League"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho

    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Xbox Series S – Pacote Fortnite e Rocket League"
    Adicionar o produto "Console Xbox Series S" no carrinho