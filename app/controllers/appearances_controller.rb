class AppearancesController < ApplicationController
	before_action :find_appearance, only: [:show, :edit, :update, :destroy]

	def index 
		@appearances = Appearance.all
	end

	def show
	end

	def new	
		@appearance = Appearance.new
	end

	def create
		@appearance = Appearance.create(appearance_params)
		redirect_to episodes_path
	end

	private

	def find_appearance
		@appearance = Appearance.find(params[:id])
	end

	def appearance_params
		params.require(:appearance).permit(:guest_id, :episode_id)
	end



end
