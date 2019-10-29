#language: pt
@project
Funcionalidade: Manter dados do projeto atraves da API
Como um usuario do sistema 
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro do projeto

Cenário: Cadastrar um projeto
    Dado o endereço da API para manter o cadastro do projeto
    Quando realizar uma requisição para cadastrar um projeto
    Então a API irá retornar os dados do cadastro do projeto respondendo o código 201

Cenário: Consultar um projeto
    Dado o endereço da API para manter o cadastro do projeto
    Quando realizar uma requisição passando o ID do projeto
    Então a API irá retornar os dados do projeto correspondente respondendo o código 200

Cenário: Alterar um projeto
    Dado o endereço da API para manter o cadastro do projeto
    Quando realizar uma requisição para alterar um projeto
    Então a API irá retornar os dados do projeto alterados respondendo o código 200

Cenário: Excluir um projeto
    Dado o endereço da API para manter o cadastro da projeto
    Quando realizar uma requisição para excluir um projeto
    Então a API deverá retornar os dados da exclusão respondendo o código 204