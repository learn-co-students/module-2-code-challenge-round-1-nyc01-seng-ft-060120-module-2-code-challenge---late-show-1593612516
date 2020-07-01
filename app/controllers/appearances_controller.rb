class AppearancesController < ApplicationController
    def new 
        @appearance = Appearance.new 
        @guests = Guest.all 
        @episodes = Episode.all
    end 

    def create 
        @appearance = Appearance.create
        # if @appearance.valid?              #couldnt get this to work properly so i hashed it out 
            redirect_to episodes_path  #this is taking me to the episode index as opposed to show page
        # else 
        #     flash[:my_errors] = @appearance.errors.full_messages 
        #     redirect_to new_appearance_path
        # end 
    end 

    private 

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end 
end
