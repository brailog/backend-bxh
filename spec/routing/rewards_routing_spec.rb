require "rails_helper"

RSpec.describe RewardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/rewards").to route_to("rewards#index")
    end

    it "routes to #show" do
      expect(:get => "/rewards/1").to route_to("rewards#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/rewards").to route_to("rewards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rewards/1").to route_to("rewards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rewards/1").to route_to("rewards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rewards/1").to route_to("rewards#destroy", :id => "1")
    end
  end
end
