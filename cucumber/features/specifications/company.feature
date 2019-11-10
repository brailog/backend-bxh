#language: pt
@company
Funcionalidade: Manter dados da empresa atraves da API
Como um usuario do sistema 
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro da empresa

Cenário: Cadastrar uma empresa
    Dado o endereço da API para manter o cadastro da empresa
    Quando realizar uma requisição para cadastrar uma empresa
    Então a API irá retornar os dados do cadastro da empresa respondendo o código 201

Cenário: Consultar uma empresa
    Dado o endereço da API para manter o cadastro da empresa
    Quando realizar uma requisição passando o ID da empresa
    Então a API irá retornar os dados da empresa correspondente respondendo o código 200

Cenário: Alterar uma empresa
    Dado o endereço da API para manter o cadastro da empresa
    Quando realizar uma requisição para alterar uma empresa
    Então a API irá retornar os dados da empresa alterados respondendo o código 200

# Cenário: Deletar uma empresa
#     Dado o endereço da API para manter o cadastro da empresa
#     Quando realizar uma requisição para excluir uma empresa
#     Então a API deverá retornar os dados da exclusão respondendo o código 204
