class ShowsController < ApplicationController
  def index
    shows = Show.all
    render json: shows.as_json
  end
  
  # def show
  #   show = Show.find_by(id: params[:id])
  #   render json: show.as_json
  # end

  def create
    show = Show.new
    show.name = params[:name]
    show.episodes = params[:episodes]
    show.save
    render json: show.as_json
  end

  def update
    show = Show.find_by(id: params[:id])
    show.name = params[:name] || show.name
    show.episodes = params[:episodes] || show.episodes
    show.save
    render json: show.as_json
  end

end
