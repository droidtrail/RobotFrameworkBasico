*** Settings ***
Documentation  Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Resource    ResourceAPI.robot
Suite Setup    Conectar a minha API
*** Test Cases ***
Buscar a listagem de todos os livros
    Requisitar todos os livros

