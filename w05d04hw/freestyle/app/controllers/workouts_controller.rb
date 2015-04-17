class WorkoutController < ApplicationController
  require "httparty"

  def index
    secret_key = ENV['UNIREST_API_KEY']
    #random = rand(50).to_i
    #
    # @response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=dachshund&api_key=dc6zaTOxFJmzC&limit=50").parsed_response["data"][random]["images"]["original"]["url"]

    # These code snippets use an open-source library. http://unirest.io/ruby
    # These code snippets use an open-source library. http://unirest.io/ruby
    # @workout = workout.new
    # binding.pry
    @response = HTTParty.get("https://life-fitness-lfconnect-website1.p.mashape.com/workoutresults/get_results_daily?access_token=&fromDate=<required>&timezone=<required>&toDate=<required>",
  headers:{
    "X-Mashape-Key" => "0hNOclgYgUmshFv9rD7tmDieKSVZp16H36OjsniCQGz6ScA4Zl",
    "Accept" => "application/json"
  }
    })

  end

end
