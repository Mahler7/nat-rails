class VotesController < ApplicationController
  
  def index
    get_api
  end

  private

    def get_api
      api_key = ENV["API_KEY"]
      @snacks = Unirest.get("https://api-snacks.nerderylabs.com/v1/snacks?ApiKey=" + api_key).body 
    end

end
