require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { FactoryBot.build(:project) }
  describe 'model validations' do
    it 'should be valid if all restrictions are matched' do
      expect(subject).to be_valid
    end

    it 'should not be valid if subject name is longer than 100 characters' do
      subject.name = "a"*101
      expect(subject).to_not be_valid
    end

    it 'should not be valid if subject name is shorther than 5 characters' do
      subject.name = 'a'
      expect(subject).to_not be_valid
    end

    it 'should not be valid if it has no name' do
      project = Project.new(name: nil)
      expect(project).to_not be_valid
    end

    it 'should not be valid if description is longer than 300 characters' do
      subject.description = 'a'*301
      expect(subject).to_not be_valid
    end  

    it 'should not be valid if link is not be valid' do
      link_r = /(http(s)?:\/\/)?(www(\d)?\.)?\w*\.\w{2,3}(\.\w*)?/
      expect(link_r.match? subject.link1).to eq (true)
    end
  end
end
