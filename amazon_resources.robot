*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}                      chrome
${URL}                          https://www.amazon.com.br/
${MENU_MAIS_VENDIDOS}           //a[contains(@data-csa-c-content-id,'bestsellers')]
${HEADER_COMO_VENDAR}           //h2[contains(.,'Mais Vendidos em Eletrônicos')]
${TEXTO_HEADER_COMO_VENDAR}     Mais Vendidos em Eletrônicos        


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    # Close Browser
    
Acessar a home page do site Amazon.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${MENU_MAIS_VENDIDOS}

Entrar no menu "Venda na Amazon"
    Click Element   locator=${MENU_MAIS_VENDIDOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains         text=${FRASE} 
    Wait Until Element Is Visible    locator=${HEADER_COMO_VENDAR}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}  

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//h2[contains(.,'${NOME_CATEGORIA}')]

#Caso de teste 02 - Pesquisa de Produto
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Wait Until Element Is Visible    locator=twotabsearchtextbox
    Input Text                       locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element                    locator=nav-search-submit-button
    
Verificar o resultado da pesquisa se está listando o produto ${PRODUTO}
    Wait Until Element Is Visible    locator=//span[@class='a-size-base a-color-base a-text-normal'][contains(.,${PRODUTO})]
    
#######################GHERKIN STEPS###########################
# Caso de teste 01 - Acesso ao menu "Eletrônicos"
Dado que eu estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Venda na Amazon"
    Entrar no menu "Venda na Amazon"

Então o título da página deve ficar "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"

E o texto "Mais Vendidos em Eletrônicos" deve ser exibido na página
    Verificar se aparece a frase "Mais Vendidos em Eletrônicos"

E a categoria "Mais Vendidos em Esporte" deve ser exibida na página    
    Verificar se aparece a categoria "Mais Vendidos em Esporte"