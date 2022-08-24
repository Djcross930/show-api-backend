class ShowsController < ApplicationController
  def index
    shows = Show.all
    render json: shows.as_json
  end
  
  def show
    show = Show.find_by(id: params[:id])
    render json: show.as_json
  end
end
