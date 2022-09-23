*** Settings ***
Documentation  Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Library        RequestsLibrary
Library        Collections 
*** Variables ***
${URL_API}    https://fakerestapi.azurewebsites.net/api/v1/
&{BOOK_15}    id=15
...           title=Book 15
...           pageCount=1500

*** Keywords ***
# SETUP E TEARDOWS
Conectar a minha API
    Create Session    fakeAPI    ${URL_API}

# AÇÕES
Requisitar todos os livros
    ${RESPOSTA}    GET On Session    fakeAPI    Books
    Log    ${RESPOSTA.text} 
    Set Test Variable    ${RESPOSTA}

Requisitar o livro "${ID_LIVRO}"
     ${RESPOSTA}    GET On Session    fakeAPI    Books/${ID_LIVRO}
    Log    ${RESPOSTA.text} 
    Set Test Variable    ${RESPOSTA}

################################ Conferências #########################################
Conferir o status code
    [Arguments]    ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}     ${STATUSCODE_DESEJADO}

Conferir o reason
    [Arguments]    ${REASON_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.reason}    ${REASON_DESEJADO}

Conferir se retorna uma lista com "${QTDE_LIVROS}" livros
    Length Should Be    ${RESPOSTA.json()}    ${QTDE_LIVROS}

Conferir se retorna todos os dados corretos do livro 15
    Dictionary Should Contain Item    ${RESPOSTA.json()}                    id           ${BOOK_15.id}
    Dictionary Should Contain Item    ${RESPOSTA.json()}                    title        ${BOOK_15.title}
    Dictionary Should Contain Item    ${RESPOSTA.json()}                    pageCount    ${BOOK_15.pageCount}
    Should Not Be Empty               ${RESPOSTA.json()["description"]}
    Should Not Be Empty               ${RESPOSTA.json()["excerpt"]}
    Should Not Be Empty               ${RESPOSTA.json()["publishDate"]}      
