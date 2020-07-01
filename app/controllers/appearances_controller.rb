class AppearancesController < ApplicationController

    # The action 'new' for AppearancesController
    def new
        # First argument in form cannot contain nil or be empty
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        
        # if @appearance.valid?
        # byebug (Episode needs Show Page)
        # redirected to the selected episode's show page.
             redirect_to episode_path(episode)
            # go to /episode/x(episode.id)
        # else 
            # @appearance.errors.messages
            # redirect_to new_appearance_path
    end


    private


    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end


end # end of AppearancesController class
