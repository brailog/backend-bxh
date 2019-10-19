Dado("o endereço da API para manter o cadastro da empresa") do
  # Já instanciado pela classe Company 
end

# < - - - - - - - - MÉTODO POST - - - - - - - - >
Quando("realizar uma requisição para cadastrar uma empresa") do
  $response = @company.postCompany
end

Então("a API irá retornar os dados do cadastro da empresa respondendo o código {int}") do |int|
    expect($response.code).to eq(int)
    puts "Response code   : #{$response.code}"
    expect($response.message).to eq("Created")
    puts "Response Message: #{$response.message}"
    puts "< - - - - - - - - - - - - - - - - - - - - - - >"
    puts "ID              : #{$response["id"]}"
    puts "Name            : #{$response["name"]}"
    puts "Description     : #{$response["description"]}"
    puts "CNPJ            : #{$response["cnpj"]}"
    puts "Phone           : #{$response["phone"]}"
    
end

# < - - - - - - - - MÉTODO GET BY ID - - - - - - - - >
Quando("realizar uma requisição passando o ID da empresa") do
  $len = @company.getmaxId
  $selectId = rand 1..$len
  $get = @company.getCompany($selectId)
end

Então("a API irá retornar os dados da empresa correspondente respondendo o código {int}") do |int|
  expect($get.code).to eq(int)
  expect($get.message).to eq("OK")
  expect($get["id"]).to eq($selectId)

  puts "< - - - - - - - - - - - - - - - - - - - - - - >"
  puts "ID              : #{$get["id"]}"
  puts "Name            : #{$get["name"]}"
  puts "Description     : #{$get["description"]}"
  puts "CNPJ            : #{$get["cnpj"]}"
  puts "Phone           : #{$get["phone"]}"
  puts "Status code     : #{$get.code}"

end

Quando("realizar uma requisição para alterar uma empresa") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("a API irá retornar os dados da empresa alterados respondendo o código {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("realizar uma requisição para excluir uma empresa") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("a API deverá retornar os dados da exclusão respondendo o código {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end