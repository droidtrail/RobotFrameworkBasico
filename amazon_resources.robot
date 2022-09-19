*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Variables ***
${URL}                          https://www.amazon.com.br/
${MENU_VENDA_AMAZON}            //a[@data-csa-c-slot-id='nav_cs_0']
${HEADER_COMO_VENDAR}           //h1[contains(.,'Comece a vender na Amazon')]
${TEXTO_HEADER_COMO_VENDAR}     Comece a vender na Amazon        


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser
    
Acessar a home page do site Amazon.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${MENU_VENDA_AMAZON}

Entrar no menu "Venda na Amazon"
    Click Element   locator=${MENU_VENDA_AMAZON}

Verificar se aparece a frase "Comece a vender na Amazon"
    Wait Until Page Contains         text=${TEXTO_HEADER_COMO_VENDAR} 
    Wait Until Element Is Visible    locator=${HEADER_COMO_VENDAR}