# require 'rails_helper'

# RSpec.describe Project, :type => :model do    
#   it "is valid with all valid attributes" do
#     @name = Faker::Game.title
#     @description = Faker::Game.genre
#     @link1 = "www."+Faker::DcComics.hero+".com"
#     @link2 = "www."+Faker::DcComics.villain+".com"
#     @category = Faker::Music.genre    
        
#     binding.pry
    
#     project = Project.new(
#         {
#           "name":@name,
#           "description":@description,
#           "link1":@link1,
#           "link2":@link2,
#           "category":@category,
#           "company_id":100
#         }
#       )
#     expect(project).to be_valid
#   end
# end

require 'rails_helper'
require 'faker'

describe Project do
  it "expect valid project" do

    binding.pry
    company = FactoryGirl.create(:company)    

    project = FactoryGirl.create(:project)    

    expect(project).to be_valid          
  end
end

FactoryGirl.define do
  factory :project do
    name = Faker::Game.title
    description = Faker::Game.genre
    link1 = "www."+Faker::DcComics.hero+".com"
    link2 = "www."+Faker::DcComics.villain+".com"
    category = Faker::Music.genre    
    company_id = 100
  end
end