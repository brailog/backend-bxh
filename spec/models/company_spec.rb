require 'rails_helper'

RSpec.describe Company, type: :model do
  subject { FactoryGirl.build(:company) }
  describe 'Model validations' do
    it 'should be valid if all the attributes are present' do
      expect(subject).to be_valid
    end
  end
end