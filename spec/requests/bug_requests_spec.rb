require 'rails_helper'

RSpec.describe "BugRequests", type: :request do
  describe "GET /bug_requests" do
    it "works! (now write some real specs)" do
      get bug_requests_path
      expect(response).to have_http_status(200)
    end
  end
end
