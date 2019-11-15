# require 'faker'

# company = Company.new(
#     {
#     "name":"Heller LLC",
#     "description":"Synergistic next generation matrices",
#     "cnpj":"31171156000754",
#     "phone":"(346) 103-3387 x790",
#     "email":"nathan@mcdermott.net",
#     "password":"12345678"
#     }
# )

# company.save!

# FactoryBot.define do
#   factory :bug_request do
#     title "MyString"
#     category "MyString"
#     repositore "MyString"
#     aplicationlink "MyString"
#     status false
#     project nil
#     hunter nil
#   end
#     factory :company do
#         name { Faker::Company.name } 
#         description { Faker::Movies::VForVendetta.speech }
#         cnpj { Faker::Company.brazilian_company_number(formatted: false) }
#         phone { Faker::PhoneNumber.phone_number }
#         email { Faker::Internet.email }
#         password { 12345678 }
#     end     
# end

# FactoryBot.define do
#   factory :bug_request do
#     title "MyString"
#     category "MyString"
#     repositore "MyString"
#     aplicationlink "MyString"
#     status false
#     project nil
#     hunter nil
#   end
#     factory :project do
#         name { Faker::Game.title }
#         description { Faker::Movies::VForVendetta.speech }
#         link1 { "www."+Faker::DcComics.hero+".com" }
#         link2 { "www."+Faker::DcComics.villain+".com" }
#         category { Faker::Music.genre }
#         company_id { company.id }
#     end 
# end

# FactoryBot.define do
#   factory :bug_request do
#     title "MyString"
#     category "MyString"
#     repositore "MyString"
#     aplicationlink "MyString"
#     status false
#     project nil
#     hunter nil
#   end
#     factory :hunter do
#         name { Faker::Movies::VForVendetta.character }
#         description { Faker::Movies::VForVendetta.speech }
#         cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
#         phone { Faker::PhoneNumber.cell_phone }
#         link1 { "www."+Faker::DcComics.heroine+".com" }
#         email { Faker::Internet.email }
#         password { 12345678 }
#     end 
# end


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

FactoryBot.define do
    factory :company do
        name { Faker::Company.name } 
        description { Faker::Movies::VForVendetta.speech }
        cnpj { Faker::Company.brazilian_company_number(formatted: false) }
        phone { Faker::PhoneNumber.phone_number }
        email { Faker::Internet.email }
        password { 12345678 }
    end     
end

FactoryBot.define do
    factory :project do
        name { Faker::Game.title }
        description { Faker::Movies::VForVendetta.speech }
        link1 { "www."+Faker::DcComics.hero+".com" }
        link2 { "www."+Faker::DcComics.villain+".com" }
        category { Faker::Music.genre }
        company_id { company.id }
    end 
end

FactoryBot.define do
    factory :hunter do
        name { Faker::Movies::VForVendetta.character }
        description { Faker::Movies::VForVendetta.speech }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        phone { Faker::PhoneNumber.cell_phone }
        link1 { "www."+Faker::DcComics.heroine+".com" }
        email { Faker::Internet.email }
        password { 12345678 }
    end 
end


