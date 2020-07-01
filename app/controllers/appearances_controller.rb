class AppearancesController < ApplicationController
    def new 
        @appearance = Appearance.new 
    end 

    def create 
        @appearance = Appearance.create
    end 

    private 

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end 
end
