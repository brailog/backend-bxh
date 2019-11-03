Before '@company' do 
    @email = Faker::Internet.email
    @password = 123456
    @name = Faker::Company.name
    @description = Faker::Company.catch_phrase
    @cnpj = Faker::Company.brazilian_company_number(formatted: false) 
    @phone = Faker::PhoneNumber.phone_number

    @body = {
            company: {
                "email":@email,
                "senha":@password,
                "name":@name,
                "description":@description,
                "cnpj":@cnpj,
                "phone":@phone
            }
    }

    @company = Company.new(@body)
end
