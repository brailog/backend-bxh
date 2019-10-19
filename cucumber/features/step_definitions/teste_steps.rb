  Dado("o endereço da API para manter o cadsatro da empresa") do
    $uri_base = 'http://localhost:3000/companies'
  end
  
  Quando("realizar uma requisição para cadastrar uma empresa") do
    $response = HTTParty.post('http://localhost:3000/companies',
        :body => {"name":Faker::Company.name,"description":Faker::Company.catch_phrase,"cnpj":Faker::Company.brazilian_company_number(formatted: false),"phone":Faker::PhoneNumber.phone_number}.to_json,
        :headers => { 'Content-Type' => 'application/json' })
  end
  
  Então("a API retornar os dados do cadastro da empresa respondendo o codigo {int}") do |int|
    puts "response code :#{$response.code}"
    puts "response body :#{$response.body}"
  end