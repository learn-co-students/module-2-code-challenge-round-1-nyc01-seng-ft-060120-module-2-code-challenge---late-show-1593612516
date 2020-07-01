class GuestsController < ApplicationController

	before_action :find_guest, only: [:show, :edit, :update, :destroy]


  def index
    if params[:order]
      @guests = Guest.all.sort_by(Episode.all.each{|e| e.avg_rating.to_i})

    else
      @guests = Guest.all
    end
  end

  def show
  end

  private 

	def find_guest
  	@guest = Guest.find(params[:id])
  end

end
