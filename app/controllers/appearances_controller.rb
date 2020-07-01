class AppearancesController < ApplicationController

    def new 
        @app = Appearance.new
    end

    def create 
        @app = Appearance.create(app_params)
        
        if @app.valid?
            redirect_to episode_path(@app.episode_id)
        else 
            flash[:errors] = @app.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    def app_params 
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
