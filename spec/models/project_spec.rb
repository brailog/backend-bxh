require 'rails_helper'

RSpec.describe Project, :type => :model do    
  it "is valid with all valid attributes" do
    @name = Faker::Game.title
    @description = Faker::Game.genre
    @link1 = "www."+Faker::DcComics.hero+".com"
    @link2 = "www."+Faker::DcComics.villain+".com"
    @category = Faker::Music.genre

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
    project = Project.new(
      {
        "name":@name,
        "description":@description,
        "link1":@link1,
        "link2":@link2,
        "category":@category,
        "company": company
      }
)
    expect(project).to be_valid
  end
end