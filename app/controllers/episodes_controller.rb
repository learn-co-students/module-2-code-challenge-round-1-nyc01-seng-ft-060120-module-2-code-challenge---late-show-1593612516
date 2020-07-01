class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])

  end

  private

  def episodee_params
    params.require(:episode).permit(:date, :number)
  end


end
