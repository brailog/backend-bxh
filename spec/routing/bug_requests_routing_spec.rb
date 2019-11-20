require "rails_helper"

RSpec.describe BugRequestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/bug_requests").to route_to("bug_requests#index")
    end

    it "routes to #show" do
      expect(:get => "/bug_requests/1").to route_to("bug_requests#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bug_requests").to route_to("bug_requests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bug_requests/1").to route_to("bug_requests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bug_requests/1").to route_to("bug_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bug_requests/1").to route_to("bug_requests#destroy", :id => "1")
    end
  end
end
