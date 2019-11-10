require 'rails_helper'

RSpec.describe Hunter, type: :model do
  subject { FactoryGirl.build(:hunter) }
  describe 'Model validations' do
    it 'should be valid if all the attributes are present' do
      expect(subject).to be_valid
    end
  end
end