Before '@company' do 
    @name = Faker::Company.name
    @description = Faker::Company.catch_phrase
    @cnpj = Faker::Company.brazilian_company_number(formatted: false)
    @phone = Faker::PhoneNumber.phone_number
    @email = Faker::Internet.email
    @password = 123456

    @body = {
            company: {
                "name":@name,
                "description":@description,
                "cnpj":@cnpj,
                "phone":@phone,
                "email":@email,
                "senha":@password
            }
    }

    @company = Company.new(@body)
end
