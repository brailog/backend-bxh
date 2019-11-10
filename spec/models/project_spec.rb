require "rails_helper"

RSpec.describe Project, type: :model do
  subject { FactoryGirl.build(:project) }
  describe "Model validations" do
    it "should be valid if all the attributes are present" do
      expect(subject).to be_valid
    end
  end
end
