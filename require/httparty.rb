require 'httparty'
require 'faker'
require 'json'

# puts "Método GET; " # Método GET -- 
# $get = HTTParty.get('http://localhost:3000/companies', :body => {})
# puts "response code :#{$get.code}"
# puts "response message :#{$get.message}"
# puts "response headers :#{$get.headers}"
# puts "response body :#{$get.body}"


puts "Método POST; " # Método POST --
response = HTTParty.post('http://localhost:3000/companies',
    :body => {
        "name": "Hahn LLC",
        "description": "Profit-focused client-driven monitoring",
        "cnpj": "STRING?",
        "phone": "STRING:?",
        "created_at": "2019-11-03T16:56:26.843Z",
        "updated_at": "2019-11-03T16:56:26.843Z",
        "email": "umemail@teste",
        "password": "senha"
    }.to_json,
    :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'})

puts "response code :#{response.code}"
puts "response message :#{response.message}"
puts "response headers :#{response.headers.inspect}"
puts "response body :#{response.body}"