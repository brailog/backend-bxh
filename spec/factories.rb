
# FactoryBot.define do
#     factory :project do
#             name {"Heller LLC"} 
#             description {"Synergistic next generation matrices"}
#             cnpj {"31171156000754"}
#             phone {"(346) 103-3387 x790"}
#             email { "nathan@mcdermott.net"}
#             password {"12345678"} 
#     end
# end

FactoryGirl.define do
    factory :project do
        name { "Heller LLC" }
        description { "Synergistic next generation matrices" }
        cnpj { "31171156000754" }
        phone { "(346) 103-3387 x790" }
        email { "nathan@mcdermott.net" }
        password { "12345678" }
    end
end