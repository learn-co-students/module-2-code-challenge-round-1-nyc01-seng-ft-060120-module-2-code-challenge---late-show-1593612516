class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @sorted = @guest.appearance_sort
  end
end
