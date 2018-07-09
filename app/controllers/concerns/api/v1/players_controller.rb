class Api::V1::PlayersController < ApplicationController

  def show
  end

  def search
    epic-nickname = params[]
    platform = params[]
    url = "https://api.fortnitetracker.com/v1/profile/#{platform}/#{epic-nickname}"
    RestClient.get(url, headers={})
  end

end
