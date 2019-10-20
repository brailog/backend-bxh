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
        link1 { '' }
        link2 { '' }
        company { FactoryBot.build(:company) }
    end
end