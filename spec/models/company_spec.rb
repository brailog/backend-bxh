require 'rails_helper'


RSpec.describe Company, :type => :model do    
  it "is valid with all valid attributes" do
    @name = Faker::Company.name
    @description = Faker::Company.catch_phrase
    @cnpj = Faker::Company.brazilian_company_number(formatted: false)
    @phone = Faker::PhoneNumber.phone_number
    @email = Faker::Internet.email
    @password = 12345678

    company = Company.new(
        {
            "name":@name,
            "description":@description,
            "cnpj":@cnpj,
            "phone":@phone,
            "email":@email,
            "password":@password
        }
    )

    expect(company).to be_valid
  end
end