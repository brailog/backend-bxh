# frozen_string_literal: true

Dado('o endereço da API para manter o cadastro do projeto') do
    # Já instanciado pela classe Project
  end
  
  # < - - - - - - - - MÉTODO POST - - - - - - - - >
  Quando('realizar uma requisição para cadastrar um projeto') do
    $response = @project.postProject
  end
  
  Então('a API irá retornar os dados do cadastro do projeto respondendo o código {int}') do |int|
    expect($response.code).to eq(int)
    puts "Response code   : #{$response.code}"
    expect($response.message).to eq('Created')
    puts "Response Message: #{$response.message}"
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$response['id']}"
    puts "Nome            : #{$response['name']}"
    puts "Descrição       : #{$response['description']}"
    puts "link1           : #{$response['link1']}"
    puts "link2           : #{$response['link2']}"
    puts "Empresa         : #{$response['company_id']}"
  end
  
  # < - - - - - - - - MÉTODO GET BY ID - - - - - - - - >
  Quando('realizar uma requisição passando o ID do projeto') do
    $getId = @project.getRandomId
    $get = @project.getProject($getId)
  end
  
  Então('a API irá retornar os dados do projeto correspondente respondendo o código {int}') do |int|
    expect($get.code).to eq(int)
    expect($get.message).to eq('OK')
    expect($get['id']).to eq($getId)
  
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$get['id']}"
    puts "Nome            : #{$get['name']}"
    puts "Descrição       : #{$get['description']}"
    puts "link1           : #{$get['link1']}"
    puts "link2           : #{$get['link2']}"
    puts "Empresa         : #{$get['company_id']}"
    puts "Status code     : #{$get.code}"
  end
  
  Quando('realizar uma requisição para alterar um projeto') do
    $putId = @project.getRandomId
    $put = @project.putProject($putId)
  end
  
  Então('a API irá retornar os dados do projeto alterados respondendo o código {int}') do |int|
    expect($put.code).to eq(int)
    expect($put.message).to eq('OK')
    expect($put['id']).to eq($putId)
  
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$put['id']}"
    puts "Nome            : #{$put['name']}"
    puts "Descrição       : #{$put['description']}"
    puts "link1           : #{$put['link1']}"
    puts "link2           : #{$put['link2']}"
    puts "Empresa         : #{$put['company_id']}"
    puts "Status code     : #{$put.code}"
  end
  
  Quando('realizar uma requisição para excluir um projeto') do
    $deleteId = @project.getRandomId
    $delete = @project.deleteProject($deleteId)
  end
  
  Então('a API irá respondendo o código {int}') do |int|
    expect($delete.code).to eq(int)
    expect($delete.message).to eq('No Content')
  
    puts '< - - - - - - - - - - - - - - - - - - - - - - >'
    puts "ID              : #{$delete['id']}"
    puts "Nome            : #{$delete['name']}"
    puts "Descrição       : #{$delete['description']}"
    puts "link1           : #{$delete['link1']}"
    puts "link2           : #{$delete['link2']}"
    puts "Empresa         : #{$delete['company_id']}"
    puts "Status code     : #{$delete.code}"
  end
  