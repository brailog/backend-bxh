require 'rails_helper'

RSpec.describe Project, :type => :model do    
  it "is valid with all valid attributes" do
    @name = Faker::Game.title
    @description = Faker::Game.genre
    @link1 = "www."+Faker::DcComics.hero+".com"
    @link2 = "www."+Faker::DcComics.villain+".com"
    @category = Faker::Music.genre
    json = HTTParty.get('http://localhost:3000/companies', :body => {})
    @company_id = json.first["id"]
    project = Project.new(
        {
                "name":@name,
                "description":@description,
                "link1":@link1,
                "link2":@link2,
                "category":@category,
                "company_id":@company_id
        }
)
    expect(project).to be_valid
  end
end