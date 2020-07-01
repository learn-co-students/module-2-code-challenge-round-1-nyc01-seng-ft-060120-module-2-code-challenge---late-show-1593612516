class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end


  private

  def appearance_params
    params.require(:guest).permit(:name, :occupation)
  end

end
