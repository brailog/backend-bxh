#language: pt
@company
Funcionalidade: Manter dados da empresa atraves da API
Como um usuario do sistema 
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro da empresa

Cenário: Cadastrar uma empresa
    Dado o endereço da API para manter o cadsatro da empresa
    Quando realizar uma requisição para cadastrar uma empresa
    Então a API retornar os dados do cadastro da empresa respondendo o codigo 201