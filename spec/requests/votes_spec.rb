require "rails_helper"

RSpec.describe "Voting", type: :request do
  
  before do
    @user = User.create(email: "user@example.com", password: "password")
    api_key = ENV["API_KEY"]
    @snacks = Unirest.get("https://api-snacks.nerderylabs.com/v1/snacks?ApiKey=" + api_key).body
  end  

  describe 'get("https://api-snacks.nerderylabs.com/v1/snacks?ApiKey=""' do
    it "returns a list of snacks" do
      get "/voting"
      expect(response.status).to eq 200
    end
  end

end