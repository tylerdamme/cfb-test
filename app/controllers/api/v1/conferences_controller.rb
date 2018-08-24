class Api::V1::ConferencesController < ApplicationController

  def index
    conference = Conference.all
    render json: conference.as_json
  end
end
