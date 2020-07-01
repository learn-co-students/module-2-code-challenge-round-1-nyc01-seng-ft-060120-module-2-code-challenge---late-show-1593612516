class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episode = @guest.episodes.find(params[:id])
    @appearance = @guest.appearances.where(episode_id: @episode.id)
  end
end
