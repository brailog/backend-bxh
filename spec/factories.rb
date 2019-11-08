require 'faker'
company = Company.new(
    {
    "name":"Heller LLC",
    "description":"Synergistic next generation matrices",
    "cnpj":"31171156000754",
    "phone":"(346) 103-3387 x790",
    "email":"nathan@mcdermott.net",
    "password":"12345678"
    }
)
company.save!

FactoryGirl.define do
    factory :company do
        name { Faker::Company.name } 
        description { Faker::Movies::VForVendetta.speech }
        cnpj { Faker::Company.brazilian_company_number(formatted: false) }
        phone { Faker::PhoneNumber.phone_number }
        email { Faker::Internet.email }
        password { 12345678 }
    end     
end

FactoryGirl.define do
    factory :project do
        name { "Nome" }
        description { "description" }
        link1 { "link1" }
        link2 { "link2" }
        category { "category" }
        company_id { company.id }
    end 
end