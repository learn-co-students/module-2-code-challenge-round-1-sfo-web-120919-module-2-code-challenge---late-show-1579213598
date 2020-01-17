class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  private

  def episode_params
    params.require(:episode).permit(:date, :number)
  end
end

