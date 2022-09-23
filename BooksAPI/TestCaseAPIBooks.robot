*** Settings ***
Documentation  Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Resource    ResourceAPI.robot
Suite Setup    Conectar a minha API
*** Test Cases ***

Buscar a listagem de todos os livros - Get em livros
    Requisitar todos os livros
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se retorna uma lista com "200" livros

Buscar um livro específico - Get por id
    Requisitar o livro "15"
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se retorna todos os dados corretos do livro 15

Cadastrar um novo livro (POST)
    Cadastrar um novo livro
    Conferir o status code    200
    Conferir o reason    OK
    

    
    

