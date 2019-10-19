  Dado("o endereço da API para manter o cadsatro da empresa") do
    #Já instanciado pela classe Company
  end
  
  Quando("realizar uma requisição para cadastrar uma empresa") do
    $response = @company.postCompany
  end
  
  Então("a API retornar os dados do cadastro da empresa respondendo o codigo {int}") do |int|
    puts "response code :#{$response.code}"
    puts "response body :#{$response.body}"
  end