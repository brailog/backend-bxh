Dado("o endereço da API para manter o cadastro do projeto") do
    # Já instanciado pela classe Project 
  end
  
  # < - - - - - - - - MÉTODO POST - - - - - - - - >
  Quando("realizar uma requisição para cadastrar um projeto") do
    $response = @project.postProject
  end
  
  Então("a API irá retornar os dados do cadastro do projeto respondendo o código {int}") do |int|
      expect($response.code).to eq(int)
      puts "Response code   : #{$response.code}"
      expect($response.message).to eq("Created")
      puts "Response Message: #{$response.message}"
      puts "< - - - - - - - - - - - - - - - - - - - - - - >"
      puts "ID              : #{$response["id"]}"
      puts "Name            : #{$response["name"]}"
      puts "Description     : #{$response["description"]}"
      puts "Link1           : #{$response["link1"]}"
      puts "Link2           : #{$response["link2"]}"
      puts "Category        : #{$response["category"]}"
      
  end
  
  # < - - - - - - - - MÉTODO GET BY ID - - - - - - - - >
  Quando("realizar uma requisição passando o ID do projeto") do
    $getId = @project.getRandomId
    $get = @project.getProject($getId)
  end
  
  Então("a API irá retornar os dados do projeto correspondente respondendo o código {int}") do |int|
    expect($get.code).to eq(int)
    expect($get.message).to eq("OK")
    expect($get["id"]).to eq($getId)
  
    puts "< - - - - - - - - - - - - - - - - - - - - - - >"
    puts "ID              : #{$get["id"]}"
    puts "Name            : #{$get["name"]}"
    puts "Description     : #{$get["description"]}"
    puts "Link1           : #{$get["link1"]}"
    puts "Link2           : #{$get["link2"]}"
    puts "Category        : #{$get["category"]}"
    puts "Status code     : #{$get.code}"
  
  end
  
  Quando("realizar uma requisição para alterar um projeto") do
    $putId = @project.getRandomId
    $put = @project.putProject($putId)
  end
  
  Então("a API irá retornar os dados do projeto alterados respondendo o código {int}") do |int|
    expect($put.code).to eq(int)
    expect($put.message).to eq("OK")
    expect($put["id"]).to eq($putId)
  
    puts "< - - - - - - - - - - - - - - - - - - - - - - >"
    puts "ID              : #{$put["id"]}"
    puts "Name            : #{$put["name"]}"
    puts "Description     : #{$put["description"]}"
    puts "Link1           : #{$put["link1"]}"
    puts "Link2           : #{$put["link2"]}"
    puts "Category           : #{$put["category"]}"
    puts "Status code     : #{$put.code}"
  
  end
  
  Quando("realizar uma requisição para excluir um projeto") do
    $deleteId = @project.getRandomId
    $delete = @project.deleteProject($deleteId)
  end
  
  Então("a API deverá retornar os dados da exclusão respondendo o código {int}") do |int|
    expect($delete.code).to eq(int)
    expect($delete.message).to eq("No Content")
  
    puts "< - - - - - - - - - - - - - - - - - - - - - - >"
    puts "ID              : #{$delete["id"]}"
    puts "Name            : #{$delete["name"]}"
    puts "Description     : #{$delete["description"]}"
    puts "Link1           : #{$delete["link1"]}"
    puts "Link2           : #{$delete["link2"]}"
    puts "Category        : #{$response["category"]}"
    puts "Status code     : #{$delete.code}"
  
  end