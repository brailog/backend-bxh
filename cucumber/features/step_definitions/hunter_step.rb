# frozen_string_literal: true

Dado('o endereço da API para manter o cadastro do hunter') do
    # Já instanciado pela classe Hunter
  end
  
  # < - - - - - - - - MÉTODO POST - - - - - - - - >
  Quando('realizar uma requisição para cadastrar um hunter') do
    $response = @hunter.postHunter
  end
  
  Então('a API irá retornar os dados do cadastro do hunter respondendo o código {int}') do |int|
    expect($response.code).to eq(int)
    puts "Response code   : #{$response.code}"
    expect($response.message).to eq('Created')
    puts "Response Message: #{$response.message}"
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$response['id']}"
    puts "Email           : #{$response['email']}"
    puts "Senha           : #{$response['password']}" + "*"
    puts "Name            : #{$response['name']}"
    puts "Description     : #{$response['description']}"
    puts "CPF             : #{$response['cpf']}"
    puts "Phone           : #{$response['phone']}"
    puts "Link1           : #{$response['link1']}"
  end
  
  # < - - - - - - - - MÉTODO GET BY ID - - - - - - - - >
  Quando('realizar uma requisição passando o ID do hunter') do
    $getId = @hunter.getRandomId
    $get = @hunter.getHunter($getId)
  end
  
  Então('a API irá retornar os dados do hunter correspondente respondendo o código {int}') do |int|
    expect($get.code).to eq(int)
    expect($get.message).to eq('OK')
    expect($get['id']).to eq($getId)
  
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$get['id']}"
    puts "Email           : #{$get['email']}"
    puts "Senha           : #{$get['password']}" + "*"
    puts "Name            : #{$get['name']}"
    puts "Description     : #{$get['description']}"
    puts "CPF             : #{$get['cpf']}"
    puts "Phone           : #{$get['phone']}"
    puts "Link1           : #{$get['link1']}"
    puts "Status code     : #{$get.code}"
  end
  
  Quando('realizar uma requisição para alterar um hunter') do
    $putId = @hunter.getRandomId
    $put = @hunter.putHunter($putId)
  end
  
  Então('a API irá retornar os dados do hunter alterados respondendo o código {int}') do |int|
    expect($put.code).to eq(int)
    expect($put.message).to eq('OK')
    expect($put['id']).to eq($putId)
  
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$put['id']}"
    puts "Email           : #{$put['email']}"
    puts "Senha           : #{$put['password']}" + "*"
    puts "Name            : #{$put['name']}"
    puts "Description     : #{$put['description']}"
    puts "CPF             : #{$put['cpf']}"
    puts "Phone           : #{$put['phone']}"
    puts "Link1           : #{$put['link1']}"
    puts "Status code     : #{$put.code}"
  end
  
  Quando('realizar uma requisição para excluir um hunter') do
    $deleteId = @hunter.getRandomId
    $delete = @hunter.deleteHunter($deleteId)
  end
  
  Então('a API deverá retornar os dados da exclusão respondendo o código {int}') do |int|
    expect($delete.code).to eq(int)
    expect($delete.message).to eq('No Content')
  
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$delete['id']}"
    puts "Email           : #{$delete['email']}"
    puts "Senha           : #{$delete['password']}" + "*"
    puts "Name            : #{$delete['name']}"
    puts "Description     : #{$delete['description']}"
    puts "CPF             : #{$delete['cpf']}"
    puts "Phone           : #{$delete['phone']}"
    puts "Link1           : #{$delete['link1']}"
    puts "Status code     : #{$delete.code}"
  end
  