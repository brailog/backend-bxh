#language: pt
@user
Funcionalidade: Manter dados do usuário atraves da API
Como um usuario do sistema 
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro do usuário

Cenário: Cadastrar um usuário
    Dado o endereço da API para manter o cadastro do usuário
    Quando realizar uma requisição para cadastrar um usuário
    Então a API irá retornar os dados do cadastro do usuário respondendo o código 201

Cenário: Consultar um usuário
    Dado o endereço da API para manter o cadastro do usuário
    Quando realizar uma requisição passando o ID do usuário
    Então a API irá retornar os dados do usuário correspondente respondendo o código 200

Cenário: Alterar um usuário
    Dado o endereço da API para manter o cadastro do usuário
    Quando realizar uma requisição para alterar um usuário
    Então a API irá retornar os dados do usuário alterados respondendo o código 200

Cenário: Excluir um usuário
    Dado o endereço da API para manter o cadastro da usuário
    Quando realizar uma requisição para excluir um usuário
    Então a API deverá retornar os dados da exclusão respondendo o código 204