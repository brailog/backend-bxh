FactoryBot.define do
    factory :company do
        name { 'BugXHunter Inc.' }
        description { 'Empresa prestadora de serviços de segurança da informação' }
        cnpj { 12341 }
        phone { 4555142 }
    end

    factory :project do
        name { 'BugXHunter Pentest' }
        description { 'Pentest na plataforma Bug x Hunter' }
        category { 'PENTEST' }
        link1 { 'https://www.google.com.br/' }
        link2 { 'https://www.w3school.com.br/' }
        company { FactoryBot.build(:company) }
    end
end