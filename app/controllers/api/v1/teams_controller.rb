class Api::V1::TeamsController < ApplicationController

  def index
    teams = Teams.all
    render json: teams.as_json
  end
end
