require 'httparty'
require 'faker'
require 'json'

puts "Método GET; " # Método GET -- 
response = HTTParty.get('http://localhost:3000/companies')
puts "response code :#{response.code}"
puts "response message :#{response.message}"
puts "response headers :#{response.headers}"
puts "response body :#{response.body}"

puts "Método POST; " # Método POST --
response = HTTParty.post('http://localhost:3000/companies',
    :body => {"name":Faker::Company.name,"description":Faker::Company.catch_phrase,"cnpj":Faker::Company.brazilian_company_number(formatted: false),"phone":Faker::Number.number(digits: 10)}.to_json,
    :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'})

puts "response code :#{response.code}"
puts "response message :#{response.message}"
puts "response headers :#{response.headers.inspect}"
puts "response body :#{response.body}"