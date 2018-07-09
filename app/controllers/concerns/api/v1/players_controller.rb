require 'rest-client'

class Api::V1::PlayersController < ApplicationController

  def search
    epic_nickname = params[:player]
    platform = params[:platform]
    url = "https://api.fortnitetracker.com/v1/profile/#{platform}/#{epic_nickname}"
    info = RestClient.get(url, headers={'TRN-Api-Key': ENV['fortnite_api_key']})
    render json: info
  end

end
