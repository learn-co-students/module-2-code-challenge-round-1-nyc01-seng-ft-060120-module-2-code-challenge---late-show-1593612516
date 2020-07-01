class AppearancesController < ApplicationController
  before_action :set_appearance, only: [:show, :edit, :update]

  def index
    @appearances = Appearance.all 
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance
    else
      flash[:errors] = @appearance.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @appearance.update(appearance_params)
    if @appearance.save
      redirect_to appearance_path(@appearance)
    else
      flash[:errors] = @appearance.errors.full_messages
      render :edit
    end
  end

  private
  def set_appearance
    @appearance = Appearance.find(params[:id ])
  end
  
  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id, :rating)
  end
end
