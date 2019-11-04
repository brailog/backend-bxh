#language: pt
@hunter

Funcionalidade: Manter dados do hunter atraves da API
Como um usuario do sistema 
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro do hunter

Cenário: Cadastrar um hunter
    Dado o endereço da API para manter o cadastro do hunter
    Quando realizar uma requisição para cadastrar um hunter
    Então a API irá retornar os dados do cadastro do hunter respondendo o código 201

Cenário: Consultar um hunter
    Dado o endereço da API para manter o cadastro do hunter
    Quando realizar uma requisição passando o ID do hunter
    Então a API irá retornar os dados do hunter correspondente respondendo o código 200

Cenário: Alterar um hunter
    Dado o endereço da API para manter o cadastro do hunter
    Quando realizar uma requisição para alterar um hunter
    Então a API irá retornar os dados do hunter alterados respondendo o código 200

Cenário: Deletar um hunter
    Dado o endereço da API para manter o cadastro do hunter
    Quando realizar uma requisição para excluir um hunter
    Então a API deverá retornar os dados da exclusão respondendo o código 204
