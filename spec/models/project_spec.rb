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

    it 'should not be valid if subject name is shorther than 10 characters' do
      subject.name = 'a'
      expect(subject).to_not be_valid
    end

    it 'should not be valid if it has no name' do
      project = Project.new(name: nil)
      expect(project).to_not be_valid
    end
  end
end
