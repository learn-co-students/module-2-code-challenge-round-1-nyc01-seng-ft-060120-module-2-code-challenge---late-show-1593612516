class AppearancesController < ApplicationController
  

  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
    @guest = @appearance.guest
    @episode = @appearance.episode
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(strong_params)
    if @appearance.save
      flash[:success] = "Appearance successfully created"
      redirect_to @appearance
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end
  
  
  private

  def strong_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
  
  

end
