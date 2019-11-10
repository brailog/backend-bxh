Before '@hunter' do 
    @name = Faker::Movies::VForVendetta.character
    @description = Faker::Movies::VForVendetta.speech
    @cpf = Faker::IDNumber.brazilian_citizen_number(formatted: true)
    @phone = Faker::PhoneNumber.cell_phone
    @link1 = "www."+Faker::DcComics.heroine+".com"
    @email = Faker::Internet.email
    @password = 123456

    @body = {
            hunter: {
                "name": @name,
                "description": @description,
                "cpf": @cpf,
                "phone": @phone,
                "link1": @link1,
                "email": @email,
                "password": @password
            }
    }

    @hunter = Hunter.new(@body)
end
