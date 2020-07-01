class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  # The action 'show' for GuestsController
  def show
    @guest = Guest.find(params[:id])
  end
end
