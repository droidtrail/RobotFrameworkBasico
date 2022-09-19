*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Variables ***
${URL}                          https://www.amazon.com.br/
${MENU_MAIS_VENDIDOS}           //a[@data-csa-c-slot-id='nav_cs_1']
${HEADER_COMO_VENDAR}           //h2[contains(.,'Mais Vendidos em Eletrônicos')]
${TEXTO_HEADER_COMO_VENDAR}     Mais Vendidos em Eletrônicos        


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser
    
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